package com.armydocs;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.armydocs.basic.dao.BasicDao;
import com.armydocs.basic.service.BasicService;
import com.armydocs.basic.service.JwtServiceImpl;
import com.armydocs.basic.vo.Rst;
import com.armydocs.basic.vo.SurveyAnswer;
import com.armydocs.basic.vo.SurveyItem;
import com.armydocs.basic.vo.SurveyVo;

@CrossOrigin(origins = "*")
@Controller
public class SurveyController {
	
	@Autowired private BasicService basicService;
    @Autowired private BasicDao basicDao;
    @Autowired private JwtServiceImpl jwtService;
	
	// 프로세스 페이지
    @RequestMapping("/process/{surveyIdx}")
	public String getprocessPage(@PathVariable int surveyIdx, ModelMap model) {
    	
    	SurveyVo surveyInfo = basicDao.getSurveyInfoByIdx(surveyIdx);
    	model.put("surveyInfo", surveyInfo);
    	return "process";
    }
    // 뷰어(통계) 페이지
    @RequestMapping("/view/{surveyIdx}")
	public String getViewPage(@PathVariable int surveyIdx, ModelMap model) {
    	
    	SurveyVo surveyInfo = basicDao.getSurveyInfoByIdx(surveyIdx);
    	model.put("surveyInfo", surveyInfo);
    	return "view";
    }
    
    // 답변 
    @RequestMapping(value = "/survey/{surveyIdx}/answer", method = RequestMethod.POST)
    @ResponseBody
	public Rst answerPro(
			@PathVariable int surveyIdx,
			@RequestParam(required=false, value="itemsIdx") Integer itemsIdx,
			@RequestParam(required=false, value="responseNote") String responseNote,
			@RequestParam(required=false, value="regdate") String regdate,
			HttpServletRequest request) throws Exception {
    	
    	
        Rst result = Rst.successInstance();
		int memberId = jwtService.getMemberId();
		
		SurveyAnswer info = new SurveyAnswer(surveyIdx, itemsIdx, memberId, responseNote, regdate);
		if(!basicDao.insertAnswer(info)) {
			result.fail();
		}else {
			result.setData(info);
		}
        return result;
    }
	
	// 설문 항목 로드
    @RequestMapping(value = "/surveys")
    @ResponseBody
	public Rst loadSurveys(
		@RequestParam(required=false, value="type") String type,
		HttpServletRequest request) throws Exception {
        
        Rst result = Rst.successInstance();
		
		List<SurveyVo> list = null;
		
		// 현재 진행중인(참여가능한) 설문 목록
		if(type!=null && type.equals("progress")) {
			list = basicDao.getProgressSurveys();
		}
		// 내가 작성(등록)한 설문 목록
		else {
			int memberId = jwtService.getMemberId();
			list = basicDao.getSurveys(memberId);
		} 
		
		result.setData(list);
        return result;
    }
	
	// 설문 생성 (1)
    @RequestMapping(value = "/survey", method = RequestMethod.POST)
    @ResponseBody
	public Rst createSurvey(@ModelAttribute SurveyVo surveyVo, HttpServletRequest request) throws Exception {
        
        Rst result = Rst.successInstance();
		
		surveyVo.printVal();
        
		int memberId = jwtService.getMemberId();
		
		if(surveyVo.getIdx()!=0) { // 업데이트
			if(basicDao.updateSurvey(surveyVo)) {
				result.setData(surveyVo.getIdx());
			}else {
				result.fail();
			}
		}else { // 신규 등록
			Integer idx = basicService.insertSurvey(memberId, surveyVo);
	        if(idx == null) {
				result.fail();
			}else {
				result.setData(idx);
			}
		}
		
       
		
        return result;
    }
	
	// 설문 생성 (2)
    @RequestMapping(value = "/my/survey/{surveyIdx}", method = RequestMethod.GET)
	public String asdsdsdds(@PathVariable int surveyIdx, HttpServletRequest request, ModelMap model) throws Exception {
        
		/*
			해당 설문idx가 자기꺼인지 확인
		*/
		
		SurveyVo inf = basicDao.getSurveyInfoByIdx(surveyIdx);
		if(inf==null) {  
			System.out.println("Not Survey Information");
			return "redirect:/my/";
		}
		model.put("survey", inf);
		
        return "survey/items";
    }
    
    
    // 설문 기본 정보 로드
    @RequestMapping(value = "/survey/{surveyIdx}", method = RequestMethod.GET)
	@ResponseBody
	public Rst loadSurveybasicInfo(@PathVariable int surveyIdx) throws Exception {
		
		/*
			해당 설문idx가 자기꺼인지 확인
		*/
		
    	Rst result = Rst.successInstance();
    	
    	SurveyVo inf = basicDao.getSurveyInfoByIdx(surveyIdx);
		if(inf==null) {
			result.fail();
		}
		result.setData(inf);
		return result;
    }
	
	// 설문 항목 정보 로드 (2)
    @RequestMapping(value = "/survey/items/{surveyIdx}", method = RequestMethod.GET)
	@ResponseBody
	public Rst createSurvey222(@PathVariable int surveyIdx) throws Exception {
		
		/*
			해당 설문idx가 자기꺼인지 확인
		*/
		Rst result = Rst.successInstance();
		
		List<SurveyItem> list = basicDao.getItems(surveyIdx);
		result.setData(list);
		
		return result;
    }
	
	// 설문 항목 생성 (2)
    @RequestMapping(value = "/survey/{surveyIdx}", method = RequestMethod.POST)
	@ResponseBody
	public Rst createSurvey2(@PathVariable int surveyIdx, 
			@RequestParam(required=false, value="corder") Integer corder,
			@RequestParam(required=false, value="responseNote") String responseNote,
			@RequestParam(required=false, value="qtype") String qtype,
			@RequestParam(required=false, value="note") String note,
			@RequestParam(required=false, value="nowDate") String nowDate,
			ModelMap model) throws Exception {
		
		/*
			해당 설문idx가 자기꺼인지 확인
		*/
        
		Rst result = Rst.successInstance();
		
		System.out.println("surveyIdx: "+ surveyIdx +", corder: "+corder+", qtype:"+qtype+", res: "+responseNote);
		SurveyItem item = new SurveyItem(surveyIdx, corder, note, responseNote, qtype, nowDate);
		
		
		basicService.insertItem(item);
		
		
		return result;
    }
    
    // 통계 정보 + 로드
    @RequestMapping(value = "/survey/statistics/{surveyIdx}")
	@ResponseBody
	public Rst getStatisticsData(@PathVariable int surveyIdx) throws Exception {
		
		/*
			해당 설문idx가 자기꺼인지 확인
		*/
		Rst result = Rst.successInstance();
		
		List<SurveyItem> list = basicDao.getItems(surveyIdx);
		List<Map<String,Object>> slist = basicDao.getSurveyStatistics(surveyIdx);
		
		Map<String,Object> pMap = new HashMap<String,Object>();
		pMap.put("qlist", list);	// 질문항목 
		pMap.put("slist", slist);	// 답변통계
		
		result.setData(pMap);
		
		return result;
    }
    
    // 설문 제거 하기
 	@RequestMapping(value = "/survey/{surveyIdx}", method = RequestMethod.DELETE)
 	@ResponseBody
 	public Rst deleteSurvey(@PathVariable int surveyIdx) throws Exception {
 		
 		Rst result = Rst.successInstance();
 		if(!basicDao.deleteSurveyByIdx(surveyIdx)) {
 			result.fail();
 		}
 		return result;
 	}
	

}
