package com.armydocs.basic.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.armydocs.basic.dao.BasicDao;
import com.armydocs.basic.vo.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
/**
    기본적인 서비스 
*/
public class BasicServiceImpl implements BasicService {
    
    @Autowired private BasicDao basicDao;
    @Autowired private BCryptPasswordEncoder passwordEncoder;
    
	
	public boolean insertItem(SurveyItem info) {
		
		// 기존 항목 모두 제거
		basicDao.deleteItemBySurveyIdx(info.getSurveyIdx(), info.getRegdate());
		
		basicDao.insertItem(info); // 항목 추가
		
		return true;
	}
	
	/** 설문 등록 */
	public Integer insertSurvey(int userIdx, SurveyVo surveyVo) {
		
		UserVo user = basicDao.getUserByIdx(userIdx);
		surveyVo.setUserIdx(userIdx);
		surveyVo.setName(user.getName());
		
		return basicDao.insertSurvey(surveyVo);
	}
    
    /** 회원정보 수정 */
    public boolean changeUserInformation(int idx, UserVo userVo) {
        
        userVo.setIdx(idx);
        
        if(basicDao.updateUser(userVo)) {
            return true;
        }
        return false;
    }
    
    /** 비밀번호 변경 */
    public boolean changePassword(int idx, String oldPw, String newPw) {
        try {
			UserVo user = basicDao.getUserByIdx(idx);
			if( passwordEncoder.matches(oldPw, user.getPassword()) ) {
				
				String encodedPassword = passwordEncoder.encode(newPw);
				if(basicDao.updatePassword(idx, encodedPassword)) {
					return true;
				}

			}
		}catch(Exception ec) {
			ec.printStackTrace();
		}
        return false;
    }
    
    public boolean signUp(UserVo userVo) {
        
        /* 유효성 검사, 중복 검사     */
            
        
        // 패스워드 인코딩
        String encodedPassword = passwordEncoder.encode(userVo.getPassword());
        userVo.setPassword(encodedPassword);
        
        if(basicDao.insertUser(userVo)) {
            return true;
        }
        return false;
    }
    
    public UserVo signIn(String id, String pw) {
        
        // 회원 ID,PW 비교
        UserVo user = basicDao.getUserById(id);
        if(user!=null) {
            
            if( passwordEncoder.matches(pw, user.getPassword()) ) {
            	user = basicDao.getUserById(id);
				return user; // ID,PW 모두 일치할시 회원객체 리턴
			}
        }
        
        return null;
    }
	
	
	
	
	
    
    
}