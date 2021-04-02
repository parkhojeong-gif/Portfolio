package com.company.users.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.company.users.service.PwValidation;
import com.company.users.service.UsersService;
import com.company.users.service.UsersVO;
import com.company.users.service.UsersValidation;
import com.company.users.service.impl.UsersMapper;

@Controller
public class UsersController {

	@Autowired
	UsersService usersService ;
	@Autowired
	UsersMapper usersMapper;
	
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
	public String insertUsersProc(UsersVO vo, BindingResult bresult, Model model) {
		UsersValidation usersValidation = new UsersValidation(); // 유효성 검사
		usersValidation.validate(vo, bresult);

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
	public String updateUsers(UsersVO vo, Model model) {
		model.addAttribute("list", usersMapper.getUsers(vo));
		return "/users/updateUsers";
	}

	@RequestMapping("/updateUsersProc") // 유저 수정처리
	public String updateInquireProc(UsersVO vo, BindingResult bresult) {
		usersMapper.updateUsers(vo);
		return "redirect:/getUsersList";
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

	// login 처리, 암호화
	@RequestMapping(value = "/loginProc", method = { RequestMethod.GET, RequestMethod.POST })
	public String loginProc(@Validated UsersVO vo, BindingResult result, HttpServletRequest request,
							RedirectAttributes rttr) {
		HttpSession session = request.getSession();
			if (result.hasErrors()) {
				return "login";
			}
		UsersVO users = usersMapper.logCheck(vo);
		if(users !=null) {
			boolean psMatch = pwdEncoder.matches(vo.getPassword(), users.getPassword()); //			
			if (psMatch == true) {
				session.setAttribute("users", users);
				session.setAttribute("id", users.getId());   //session에 id란 이름으로 id 저장
				return "redirect:/";
			} else {
				session.setAttribute("users", null);
				rttr.addFlashAttribute("msg", false);
			}
		}
		return "redirect:/login";
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

	// 비밀번호 찾기 
	@RequestMapping(value = "/findpw", method = RequestMethod.GET)
	public void findPwGET() throws Exception{
		
	}

	@RequestMapping(value = "/findpw", method = RequestMethod.POST)
	public void findPwPOST(@ModelAttribute UsersVO vo, HttpServletResponse response) throws Exception{
		usersService.findPw(response, vo);
	}
	
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
		
		
		
		
		
		
		
		
	}
	
	
}
