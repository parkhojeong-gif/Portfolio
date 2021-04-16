package com.company.temp;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class managerController {
	
	private static final Logger logger = LoggerFactory.getLogger(managerController.class);
	
	//메인으로
	@RequestMapping("/managerMain")
	public String manager() {
	
		return "manager";
	}
	/*
	 * //회원관리
	 * 
	 * @RequestMapping("/user") public String user() {
	 * 
	 * return "user";
	 * 
	 * }
	 */
	
	
	 //멘토관리
	 @RequestMapping("/mentor") 
	 public String mentor() {
	 
		 return "mentor"; 
	 }
	 
	//매출종합관리
	@RequestMapping("/sum")
	public String sum() {
		
		return "sum"; 
	}
	//정보공유(후기)
	@RequestMapping("/com_later")
	public String com_later() {
		
		return "com/com_later"; 
	}
	
	//고객센터(문의게시판)
	@RequestMapping("/service")
	public String service() {
		
		return "serv/service"; 
	}
	
	//고객센터(문의/답변)
	@RequestMapping("/service2")
	public String service2() {
		
		return "serv/service2"; 
	}
	//고객센터(문의/답변)
	@RequestMapping("/servQna")
	public String servQna() {
			
		return "serv/servQna"; 
	}
	//고객센터(문의/답변)
	@RequestMapping("/servNotice")
	public String servNotice() {
				
		return "serv/servNotice"; 
	}
}
