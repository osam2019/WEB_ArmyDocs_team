package com.armydocs.basic.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.armydocs.basic.vo.SurveyAnswer;
import com.armydocs.basic.vo.SurveyItem;
import com.armydocs.basic.vo.SurveyVo;
import com.armydocs.basic.vo.UserVo;


public class BasicDao extends SqlSessionDaoSupport {
	
	
	public boolean signUser(int idx) {
		Integer result = getSqlSession().update("basic.signUser", idx);
		if(result!=null&&result>0) {
            return true;
        }
        return false;
	}
	
	public List<UserVo> getNotSignedUsers() {
		return getSqlSession().selectList("basic.getNotSignedUsers");
	}
	
	public boolean deleteSurveyByIdx(int idx) {
		Integer result = getSqlSession().delete("basic.deleteSurveyByIdx", idx);
		if(result!=null&&result>0) {
            return true;
        }
        return false;
	}
	
	public boolean updateSurvey(SurveyVo vo) {
		Integer result =  getSqlSession().update("basic.updateSurvey", vo);
	    if(result!=null&&result>0) {
            return true;
        }
        return false;
	}
	
	/** 회원 프로필 사진 업로드 */
	public boolean updateUserProfile(int idx, String profile) {
		Map<String,Object> pMap = new HashMap<String,Object>();
		pMap.put("idx", idx);
		pMap.put("profile", profile);
		Integer result =  getSqlSession().update("basic.updateUserProfile", pMap);
	    if(result!=null&&result>0) {
            return true;
        }
        return false;
	}
	
	public List<Map<String,Object>> getSurveyStatistics(int surveyIdx) {
		return getSqlSession().selectList("basic.getSurveyStatistics", surveyIdx);
	}
	
	public boolean insertAnswer(SurveyAnswer info) {
		Integer result =  getSqlSession().insert("basic.insertAnswer", info);
	    if(result!=null&&result>0) {
            return true;
        }
        return false;
	}
	
	public List<SurveyVo> getProgressSurveys() {
		return getSqlSession().selectList("basic.getProgressSurveys");
	}
	
	public List<SurveyVo> getSurveys(int userIdx) {
		return getSqlSession().selectList("basic.getSurveys", userIdx);
	}
	
	/** 특정 설문 항목 정보목록 모두 로드 */
	public List<SurveyItem> getItems(int surveyIdx) {
		return getSqlSession().selectList("basic.getItems", surveyIdx);
	}
	
	/** 항목 제거 */
	public boolean deleteItemBySurveyIdx(int surveyIdx, String regdate) {
		Map<String,Object> pMap = new HashMap<String,Object>();
        pMap.put("surveyIdx", surveyIdx);
        pMap.put("regdate", regdate);
		Integer result =  getSqlSession().delete("basic.deleteItemBySurveyIdx", pMap);
	    if(result!=null&&result>0) {
            return true;
        }
        return false;
	}
	
	/** 항목 추가 */
	public Integer insertItem(SurveyItem info) {
		return getSqlSession().insert("basic.insertItem", info);
	}
	
	/** 설문 정보 조회 */
	public SurveyVo getSurveyInfoByIdx(int idx) {
		return getSqlSession().selectOne("basic.getSurveyInfoByIdx", idx);
	}
	
	/** 설문 정보 조회 */
	public int getInsertedSurveyIdx(String title) {
		return getSqlSession().selectOne("basic.getInsertedSurveyIdx", title);
	}
	
	/** 설문 등록 */
	public Integer insertSurvey(SurveyVo surveyVo) {
		Integer insertedIdx = null;
		Integer result =  getSqlSession().insert("basic.insertSurvey", surveyVo);
	    if(result!=null&&result>0) {
            insertedIdx = this.getInsertedSurveyIdx(surveyVo.getTitle());
        }
        return insertedIdx;
	}
	
	/** 회원 데이터 제거 */
	public boolean deleteUserByIdx(int idx) {
		Integer result =  getSqlSession().delete("basic.deleteUserByIdx", idx);
	    if(result!=null&&result>0) {
            return true;
        }
        return false;
	}
    
    public boolean updateUser(UserVo userVo) {
        Map<String,Object> pMap = new HashMap<String,Object>();
        Integer result =  getSqlSession().update("basic.updateUser", userVo);
	    if(result!=null&&result>0) {
            return true;
        }
        return false;
    }
    public boolean updatePassword(int idx, String password) {
        Map<String,Object> pMap = new HashMap<String,Object>();
        pMap.put("idx", idx);
        pMap.put("password", password);
        Integer result =  getSqlSession().update("basic.updatePassword", pMap);
	    if(result!=null&&result>0) {
            return true;
        }
        return false;
    }
    
	// 회원 정보 가져오기
    public UserVo getUserByIdx(int idx) {       
		return getSqlSession().selectOne("basic.getUserByIdx", idx);
	}
    
    // 회원 정보 가져오기
    public UserVo getUserById(String id) {       
		return getSqlSession().selectOne("basic.getUserById", id);
	}
    
    // 회원 정보 등록하기
    public boolean insertUser(UserVo userVo) {       
		Integer result =  getSqlSession().insert("basic.insertUser", userVo);
	    if(result!=null&&result>0) {
            return true;
        }
        return false;
    }
    
    
        
}