package com.company.service_center.news;

public class Test {
	public static void main(String[] args) {
		NewsService vvs = new NewsService();
		for (NewsVO b : vvs.searchNews("노인", 10 , 10))
		System.out.println(b);
	}
}
