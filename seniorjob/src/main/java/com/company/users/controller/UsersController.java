package com.company.users.controller;

import java.util.HashMap;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.http.HttpRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.company.users.service.PwValidation;
import com.company.api.common.Kakaoapi;
import com.company.users.service.UsersService;
import com.company.users.service.UsersVO;
import com.company.users.service.UsersValidation;
import com.company.users.service.impl.UsersMapper;

@Controller
public class UsersController {

	@Autowired
	UsersService usersService;
	@Autowired
	UsersMapper usersMapper;
	@Autowired
	Kakaoapi kakaoapi;

	@Inject
	BCryptPasswordEncoder pwdEncoder;

	@RequestMapping("/getUsersList") // 전체조회
	public String userstest(Model model) {
		model.addAttribute("list", usersMapper.getUsersList());
		return "/users/getUsersList";
	}

	@RequestMapping("/insertUsers") // 회원가입 폼
	public String insertInquire(UsersVO vo) {
		return "memberRegister";
	}

	@RequestMapping("/insertUsersProc") // 회원가입 처리, 중복체크, 암호화, 유효성검사
	public String insertUsersProc(@Validated UsersVO vo, BindingResult bresult, Model model) {
		if (bresult.hasErrors()) {
			return "memberRegister";
		}

		int result = usersMapper.idCheck(vo);
		try {
			if (result == 1) {
				return "memberRegister";

			} else if (result == 0) {
				String Pass = vo.getPassword();
				String pwd = pwdEncoder.encode(Pass);
				vo.setPassword(pwd);

				usersMapper.insertUsers(vo);
			}

		} catch (Exception e) {
			throw new RuntimeException();
		}
		return "redirect:/login";
	}

	@RequestMapping("/updateUsers") // 유저 정보 수정폼
	public String updateUsers(UsersVO vo, Model model,  HttpServletRequest request) {
		HttpSession session = request.getSession();
		//String id = (String) session.getAttribute("id");
		vo.setId("somTest");
		model.addAttribute("list", usersMapper.getUsers(vo));
		return "/users/updateUsers";
	}

	@RequestMapping("/updateUsersProc") // 유저 수정처리  //양소민 수정
	public String updateInquireProc(UsersVO vo, BindingResult bresult) {
		usersMapper.updateUsers(vo);
		return "redirect:/updateUsers";
	}

	@RequestMapping("/deleteUsers") // 유저 삭제
	public String deleteUsers(UsersVO vo) {
		usersMapper.deleteUsers(vo);
		return "redirect:/getInquireList";
	}

	// login
	@RequestMapping("/login")
	public String login(UsersVO vo) {
		return "login";
	}

	// kakao login
	@RequestMapping("/kakaologin")
	public String kakaologin(@RequestParam(value = "code", required = false) String code, UsersVO vo,
			HttpSession session) {
		System.out.println("######" + code);
		String accessToken = kakaoapi.getAccessToken(code);
		HashMap<String, Object> userInfo = kakaoapi.getUserInfo(accessToken);
		System.out.println("@AccessToken@" + accessToken);
		System.out.println("userInfo:" + userInfo.get("email"));
		System.out.println("nickname:" + userInfo.get("nickname"));
		System.out.println("profile:" + userInfo.get("profile_image"));
		System.out.println("kakaoId:" + userInfo.get("kakaoId"));

		vo.setId((String) userInfo.get("kakaoId"));
		UsersVO users = usersMapper.kakaoCheck(vo);
		System.out.println(users);

		session.setAttribute("userInfo", userInfo);
		
		if (users == null) {
			vo.setId((String) userInfo.get("kakaoId"));
			usersMapper.insertUsers(vo);
		}
		return "redirect:/";
	}

	// login 처리, 암호화
	@RequestMapping(value = "/loginProc", method = { RequestMethod.GET, RequestMethod.POST })
	public String loginProc(UsersVO vo, BindingResult result, HttpServletRequest request, RedirectAttributes rttr,
			Model model) {
		HttpSession session = request.getSession();
		UsersValidation usersvalidation = new UsersValidation();
		usersvalidation.validate(vo, result);

		if (result.hasErrors()) {
			return "login";
		}
		UsersVO users = usersMapper.logCheck(vo);
		if (users != null) {
			boolean psMatch = pwdEncoder.matches(vo.getPassword(), users.getPassword()); //
			if (psMatch == true) {
				session.setAttribute("users", users);
				session.setAttribute("id", users.getId());   //session에 id란 이름으로 id 저장  
				session.setAttribute("auth", users.getAuth());   //session에 auth란 이름으로 auth 저장
				session.setAttribute("name", users.getName()); //session에 name이란 이름으로 name 저장
				
				return "redirect:/";
			} else {
				session.setAttribute("users", null);
				rttr.addFlashAttribute("msg", false);
				model.addAttribute("message2", "패스워드가 다릅니다.");
			}
		} else {
			model.addAttribute("message", "아이디가 다릅니다.");
			return "login";
		}
		return "login";
	}

	// logout
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

	// 아이디 중복체크
	@ResponseBody
	@RequestMapping(value = "/idCheck", method = RequestMethod.POST)
	public int idCheck(UsersVO vo) {
		int result = usersMapper.idCheck(vo);
		return result;
	}

	// email 중복체크
	@ResponseBody
	@RequestMapping(value = "/emailCheck", method = RequestMethod.POST)
	public String emailCheck(String email) {
		int result = usersMapper.emailCheck(email);
		System.out.println("result:" + result);
		if (result != 0) {
			return "fail";
		} else {
			return "success";
		}
	}

	// 비밀번호 찾기
	@RequestMapping(value = "/findpw", method = RequestMethod.GET)
	public void findPwGET() throws Exception {

	}

	@RequestMapping(value = "/findpw", method = RequestMethod.POST)
	public void findPwPOST(@ModelAttribute UsersVO vo, HttpServletResponse response) throws Exception {
		usersService.findPw(response, vo);
	}

	
	//양소민 추가
	//비밀번호 변경
	@RequestMapping("/updateInfo") // 비밀번호 수정폼
	public String updateInfo() {
		return "/users/updateInfo";
	}
	
	@RequestMapping("/pwProc") //비밀번호 수정 처리
	public String pwProc(UsersVO vo, BindingResult result, HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		PwValidation pwValidation = new PwValidation(); // 유효성 검사
		pwValidation.validate(vo, result);
		
		String id = (String) session.getAttribute("id");  //로그인 시 세션에 저장된 id값 가져옴
		String pw = vo.getPassword();  //새로 입력받은 비밀번호
		String pwe = pwdEncoder.encode(pw);   // 새로 입력받은 비밀번호 암호화
		vo.setId(id);
		UsersVO users = usersMapper.logCheck(vo);
		boolean psMatch = pwdEncoder.matches(vo.getPasswordold(), users.getPassword());
		if (psMatch == true) {
			vo.setPassword(pwe);
			usersService.updateInfo(vo);  //비밀번호 수정
			return "mypage/mypageHome";
		} else {
			System.out.println("error");
			return "users/updateInfo";
		}			
		
	} //비밀번호 수정 처리 끝
	
	@GetMapping("/popCerti")  //자격증 등록 폼으로 이동
	public String popCerti() {
		return "/users/popCerti";
	}
	
	@GetMapping("/popCareer")  //경력인증서 등록 폼으로 이동
	public String popCareer() {
		return "/users/popCareer";
	}
	
	
	@RequestMapping("/insertCerti") //자격증/경력인증서 등록 처리
	public String insertCerti(UsersVO vo, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		vo.setId(id);
		usersService.insertCerti(vo);
		return "redirect:/";
		
		
	}

}
