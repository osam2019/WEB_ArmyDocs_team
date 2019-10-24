package com.armydocs.basic.vo;

public class SurveyItem {
	
	private int idx;
	private int surveyIdx;
	private int corder;
	private String note;
	private String responseNote;
	private String qtype;
	private String regdate;
	
	public SurveyItem() {}
	public SurveyItem(int surveyIdx, int corder, String note, String responseNote, String qtype, String nowDate) {
		this.surveyIdx = surveyIdx;
		this.corder = corder;
		this.note = note;
		this.responseNote = responseNote;
		this.qtype = qtype;
		this.regdate = nowDate;
	}
	
	public void setIdx(int idx) {this.idx = idx;}
	public int getIdx() {return this.idx;}
	
	public void setSurveyIdx(int surveyIdx) {this.surveyIdx = surveyIdx;}
	public int getSurveyIdx() {return this.surveyIdx;}
	public void setCorder(int corder) {this.corder = corder;}
	public int getCorder() {return this.corder;}
	public void setNote(String note) {this.note = note;}
	public String getNote() {return this.note;}
	public void setResponseNote(String responseNote) {this.responseNote = responseNote;}
	public String getResponseNote() {return this.responseNote;}
	public void setQtype(String qtype) {this.qtype = qtype;}
	public String getQtype() {return this.qtype;}
	public void setRegdate(String regdate) {this.regdate = regdate;}
	public String getRegdate() {return this.regdate;}
	
}