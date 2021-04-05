package com.company.users.controller;

import java.util.HashMap;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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

}
