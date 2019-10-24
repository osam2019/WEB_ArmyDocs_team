package com.armydocs;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.armydocs.basic.dao.BasicDao;
import com.armydocs.basic.service.JwtServiceImpl;
import com.armydocs.basic.vo.Rst;
import com.armydocs.basic.vo.UserVo;
import com.armydocs.util.FileUtil;


@CrossOrigin(origins = "*")
@Controller
public class MainController {
     
    @Autowired private BasicDao basicDao;
    @Autowired private JwtServiceImpl jwtService;
    
    // 페이지
    @RequestMapping("/developers")
	public String getTestPage(HttpServletRequest request, ModelMap model) {return "developers"; }
	
	// 약관 페이지
    @RequestMapping("/terms/{terms}")
	public String getTermsPage(@PathVariable String terms, HttpServletRequest request, ModelMap model) {
		if(terms!=null && terms.equals("privacy")) {return "privacy";}
		return "terms";
	}
	
	// 소개 페이지
    @RequestMapping("/intro")
	public String getIntroPage() {return "intro"; }
    
    // 메인페이지
    @RequestMapping("")
	public String getMainPage() {return "home"; }
    
    // 로그인 페이지
    @RequestMapping("/login")
	public String getLoginPage() {return "login";}
    
    // 회원가입 페이지
    @RequestMapping("/join")
	public String getJoinPage() {return "join";}
    
    // 마이 페이지
    @RequestMapping("/my")
	public String getMyPage() {return "mypage";}
	
	// 설문 등록 페이지
    @RequestMapping("/my/survey")
	public String getSurveyRegisterPage() {return "survey/register";}
    
    
    // 회원 승인 처리
    @RequestMapping(value = "/user/sign/{userIdx}")
    @ResponseBody
	public Rst signUser(@PathVariable int userIdx) throws Exception {
        Rst result = Rst.successInstance();
		basicDao.signUser(userIdx);
        return result;
    }
    
    // 회원 목록 로드
    @RequestMapping(value = "/users")
    @ResponseBody
	public Rst getUsers(@RequestParam(required=false, value="type") String type) throws Exception {
        Rst result = Rst.successInstance();
		List<UserVo> list = null;
		// 미승인 유저 목록 로드
		if(type!=null && type.equals("notSigned")) {
			list = basicDao.getNotSignedUsers();
		}
		result.setData(list);
        return result;
    }
    
	// 파일(사진) 업로드
	@RequestMapping(value = "/file/upload", method = RequestMethod.POST)
	@ResponseBody
	public Rst uploadFilePageString(MultipartHttpServletRequest mRequest) throws Exception {
		Rst result = Rst.successInstance();
		String fileName = FileUtil.upload( mRequest, true, null);
		if(fileName!=null) {
			result.setData(fileName);
		}else {
			result.fail();
		}
		return result;
	}
	
	// 프로필 사진 업데이트
	@RequestMapping(value = "/profile", method = RequestMethod.POST)
	@ResponseBody
	public Rst profilePathUpadate(@RequestParam(required=false, value="fileName") String fileName) throws Exception {
		Rst result = Rst.successInstance();
		int memberId = jwtService.getMemberId();
		basicDao.updateUserProfile(memberId, "/resources/tmp/"+fileName);
		return result;
	}
	
	
	
    
}