package com.armydocs.basic.vo;

public class SurveyVo {

	private int idx;
	private String regdate;
	private String startdate;
	private String enddate;
	private String title;
	private String note;
	private String name;
	private Integer userIdx;
	private String coverImg;
	private String bTarget;
	private int itemCount;
	
	private String station;
	private Integer dDay;
	private boolean progressFlag;// 진행중인지 여부
	
	public Integer getdDay() {
		return dDay;
	}

	public void setdDay(Integer dDay) {
		this.dDay = dDay;
	}

	public void printVal() {

		String content = "";
		content += "bTarget: " + bTarget+", ";
		content += "idx:"+idx+", ";
		content += "regdate:"+regdate+", ";
		content += "startdate:"+startdate+", ";
		content += "enddate:"+enddate+", ";
		content += "title:"+title+", ";
		content += "note:"+note+", ";
		content += "name:"+name+", ";
		content += "userIdx:"+userIdx+", ";
		content += "coverImg:"+coverImg+", ";
		
		System.out.println(content);
		
	}
	
	public void setNote(String note) {this.note = note;}
	public String getNote() {return this.note;}
	
	public void setName(String name) {this.name = name;}
	public String getName() {return this.name;}
	
	public void setCoverImg(String coverImg) {this.coverImg = coverImg;}
	public String getCoverImg() {return this.coverImg;}
	
	public void setRegdate(String regdate) {this.regdate = regdate;}
	public String getRegdate() {return this.regdate;}
	
	public void setStartdate(String startdate) {this.startdate = startdate;}
	public String getStartdate() {return this.startdate;}
	
	public void setEnddate(String enddate) {this.enddate = enddate;}
	public String getEnddate() {return this.enddate;}
	
	public void setTitle(String title) {this.title = title;}
	public String getTitle() {return this.title;}
	
	public void setIdx(int idx) {this.idx = idx;}
	public int getIdx() {return this.idx;}
	
	public void setUserIdx(Integer userIdx) {this.userIdx = userIdx;}
	public Integer getUserIdx() {return this.userIdx;}

	public int getItemCount() {
		return itemCount;
	}

	public void setItemCount(int itemCount) {
		this.itemCount = itemCount;
	}

	public String getStation() {
		return station;
	}

	public void setStation(String station) {
		this.station = station;
	}

	public boolean isProgressFlag() {
		return progressFlag;
	}

	public void setProgressFlag(boolean progressFlag) {
		this.progressFlag = progressFlag;
	}

	public String getbTarget() {
		return bTarget;
	}

	public void setbTarget(String bTarget) {
		this.bTarget = bTarget;
	}

	
	
	
}