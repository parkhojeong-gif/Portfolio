package com.company.service_center;

public class SearchCriteria extends Criteria{

	private String searchType = "";
	private String keyword = "";
	private String optionValue;
	
	public String getOptionValue() {
		return optionValue;
	}
	public void setOptionValue(String optionValue) {
		this.optionValue =optionValue;
	}
	 
	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	@Override
	public String toString() {
		return "SearchCriteria [searchType=" + searchType + ", keyword=" + keyword + ", optionValue=" + optionValue + " ]";
	}
	
}