package com.armydocs.basic.vo;

public class SurveyAnswer {

	private int idx;
	private int surveyIdx;
	private int itemsIdx;
	private int userIdx;
	private String responseNote;
	private String regdate;
	
	public SurveyAnswer() {}
	public SurveyAnswer(int surveyIdx, int itemsIdx, int userIdx, String responseNote, String regdate) {
		this.surveyIdx = surveyIdx;
		this.itemsIdx = itemsIdx;
		this.userIdx = userIdx;
		this.responseNote = responseNote==null?responseNote:responseNote.trim();
		this.regdate = regdate;
	}
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getSurveyIdx() {
		return surveyIdx;
	}
	public void setSurveyIdx(int surveyIdx) {
		this.surveyIdx = surveyIdx;
	}
	public int getItemsIdx() {
		return itemsIdx;
	}
	public void setItemsIdx(int itemsIdx) {
		this.itemsIdx = itemsIdx;
	}
	
	public int getUserIdx() {
		return userIdx;
	}
	public void setUserIdx(int userIdx) {
		this.userIdx = userIdx;
	}
	public String getResponseNote() {
		return responseNote;
	}
	public void setResponseNote(String responseNote) {
		this.responseNote = responseNote;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	
	
}

/*
idx int(11) unsigned not null auto_increment primary key,
surveyIdx int(11) unsigned not null,
itemsIdx int(11) unsigned not null,
userIdx int(11) unsigned not null,
responseNote text null,
regdate datetime not null
*/