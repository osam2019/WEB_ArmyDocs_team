package com.armydocs.basic.vo;

public class UserVo {

    private int idx;
    private String id;
    private String password;
    private String name;
    
    private String email;
    private String phonenm;
    private String recruitDate;
    private String signDate;
    private String station;
    private String atype;
    private String atype2;
    
    private String profile;
    private boolean masterFlag;
    private boolean signFlag;
	
	public void printVal() {

		String content = "";
		content += "id:"+id+", ";
		content += "password:"+password+", ";
		content += "name:"+name+", ";
		content += "email:"+email+", ";
		content += "phonenm:"+phonenm+", ";
		content += "recruitDate:"+recruitDate+", ";
		content += "signDate:"+signDate+", ";
		content += "station:"+station+", ";
		content += "atype:"+atype+", ";
		content += "atype2:"+atype2+", ";
		
		System.out.println(content);
		
	}
    
    
    public String getEmail() {return this.email;}
    public void setEmail(String email){this.email = email;}
    
    public String getPhonenm() {return this.phonenm;}
    public void setPhonenm(String phonenm){this.phonenm = phonenm;}
    
    public String getRecruitDate() {return this.recruitDate;}
    public void setRecruitDate(String recruitDate){this.recruitDate = recruitDate;}
    
    public String getSignDate() {return this.signDate;}
    public void setSignDate(String signDate){this.signDate = signDate;}
    
    public String getStation() {return this.station;}
    public void setStation(String station){this.station = station;}
    
    public String getAtype() {return this.atype;}
    public void setAtype(String atype){this.atype = atype;}
    
    public String getAtype2() {return this.atype2;}
    public void setAtype2(String atype2){this.atype2 = atype2;}
    
    
    
    public int getIdx() {return this.idx;}
    public void setIdx(int idx){this.idx = idx;}
    
    public String getId(){return this.id;}
    public void setId(String id){this.id = id;}
    
    public String getPassword() {return this.password;}
    public void setPassword(String password){this.password = password;}
    
    public String getName(){return this.name;}
    public void setName(String name){this.name = name;}


	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public boolean isMasterFlag() {
		return masterFlag;
	}
	public void setMasterFlag(boolean masterFlag) {
		this.masterFlag = masterFlag;
	}


	public boolean isSignFlag() {
		return signFlag;
	}


	public void setSignFlag(boolean signFlag) {
		this.signFlag = signFlag;
	}
    
}