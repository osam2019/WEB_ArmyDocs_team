package com.armydocs.basic.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import com.armydocs.basic.vo.*;

/**
    기본적인 서비스 
*/
public interface BasicService {
	
	public boolean insertItem(SurveyItem info);
    
	public Integer insertSurvey(int userIdx, SurveyVo surveyVo);
    
    public boolean changeUserInformation(int idx, UserVo userVo);
    
    public boolean changePassword(int idx, String oldPw, String newPw);
        
    public boolean signUp(UserVo userVo);
    
    public UserVo signIn(String id, String pw);

    
}