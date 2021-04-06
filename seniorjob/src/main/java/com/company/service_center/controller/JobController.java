package com.company.service_center.controller;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JobController {

	@RequestMapping("job")
	public String crawling() throws Exception{
		String local="101000";
		String url = "https://www.saramin.co.kr/zf_user/jobs/list/domestic?loc_mcd="+local;
		Document doc = null;
//		System.out.println("======================================================");
//		System.out.println("url: "+ url);
//		System.out.println("===========================sswwdd===========================");
		try {
			doc = Jsoup.connect(url).get();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		//select를 이용하여 원하는 태그 선택
		
		Elements element = doc.select("div.recruit_list_renew");
		//String defaulturl = "https://www.saramin.co.kr/zf_user/jobs/relay/view?isMypage=no&rec_idx=";
//		for(Element element1 : element) {
//			//System.out.println("기업명 : "+element1.select("div.col company_nm a").attr("title") );
//			//System.out.println("url : "+element1.select("div.col company_nm a").attr("href"));
//			//System.out.println("test용입니다:"+element1 );
//			
//		}
		
		//System.out.println(doc.toString());
		System.out.println(element);
	return "{\"1\":\"1\"}";
	}
	
}
