package com.armydocs;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.armydocs.basic.dao.BasicDao;
import com.armydocs.basic.service.BasicService;
import com.armydocs.basic.service.JwtServiceImpl;
import com.armydocs.basic.vo.Rst;
import com.armydocs.basic.vo.UserVo;

@CrossOrigin(origins = "*")
@Controller
public class LoginController {
	
	@Autowired private BasicService basicService;
    @Autowired private BasicDao basicDao;
    @Autowired private JwtServiceImpl jwtService;
    @Autowired private BCryptPasswordEncoder passwordEncoder;
    
    
    
    /** 로그아웃 */
    @RequestMapping("/logout")
	public String doLogout(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
        
        System.out.println("try logout..");
        
        Cookie kc = new Cookie("token", null);     // (쿠키 이름)에 대한 값을 null로 지정
        kc.setMaxAge(0);                           // 유효시간을 0으로 설정
        response.addCookie(kc);                    // 응답 헤더에 추가해서 없어지도록 함
        
        System.out.println("success logout..");
        return "home";
    }
    
    
    // 회원가입
    @RequestMapping(value = "/signup", method = RequestMethod.POST)
    @ResponseBody
	public Rst signUp(@ModelAttribute UserVo userVo, HttpServletRequest request) {
        
        Rst result = Rst.successInstance();
        /*
            아이디, 이메일 중복검사
            기타 필드 유효성 검사
        */
        
        if(!basicService.signUp(userVo)) {
           result.fail();
        }
        
        return result;
    }
    
    // 로그인 처리
    @RequestMapping("/signin")
    @ResponseBody
	public Rst signIn(
        @RequestParam(required=false, value="id") String id,
        @RequestParam(required=false, value="pw") String pw,
        HttpServletRequest request, HttpServletResponse response, ModelMap model) {
        
        Rst result = Rst.successInstance();
        
        UserVo user = basicService.signIn(id, pw);
        if(user!=null) {
            // 토큰 생성 및 리턴 처리
            if(user.isSignFlag()) {
            	String token = jwtService.create("member", user, "member");
                response.setHeader("Authorization", token);
            }
            result.setData(user);
            return result;
        }
        
        return result.fail().setMessage("incorrect passowrd");
    }
    
	// 회원 정보 로드
    @RequestMapping(value="/info")
    @ResponseBody
    public Rst getInfoData(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
        
    	Rst result = Rst.successInstance();
        int memberId = jwtService.getMemberId();
        UserVo userVo = basicDao.getUserByIdx(memberId);
        //System.out.println("[안녕]: "+ userVo.getName());
        result.setData(userVo);
        return result;
    }
    
    // 회원 정보 로드
    @RequestMapping(value="/info2")
    @ResponseBody
    public Rst asdsdsdasaasd23(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
        
    	Rst result = Rst.successInstance();
        UserVo userVo = basicDao.getUserByIdx(1);
        //System.out.println("[안녕]: "+ userVo.getName());
        result.setData(userVo);
        return result;
    }
	
	/** 회원 탈퇴 */
    @RequestMapping(value="/user", method = RequestMethod.DELETE)
    @ResponseBody
    public Rst withdraw(HttpServletRequest request) throws Exception {
		
		Rst result = Rst.successInstance();
        int memberId = jwtService.getMemberId();
		
		System.out.println("MemberID For Delete: "+ memberId);
		
		if(!basicDao.deleteUserByIdx(memberId)) {
			return result.fail().setMessage("errors");
		}
		return result;
	}
    
    /** 회원정보 수정 */
    @RequestMapping(value="/user", method = RequestMethod.POST)
    @ResponseBody
    public Rst changeUserInfo(@ModelAttribute UserVo userVo, 
							  @RequestParam(required=false, value="oldPassword") String oldPassword,
							  @RequestParam(required=false, value="newPassword") String newPassword,
							  HttpServletRequest request) throws Exception {
        
        System.out.println("PASSWORD: "+ oldPassword);
		System.out.println("PASSWORD(NEW): "+ newPassword);
		userVo.printVal();
        
        
    	Rst result = Rst.successInstance();
        int memberId = jwtService.getMemberId();
		
		System.out.println("MemberID: "+ memberId);
        
		// 회원 기본정보 업데이트
        basicService.changeUserInformation(memberId, userVo);
		
		//try {
			// 비밀번호 업데이트
			if(oldPassword!=null && oldPassword.trim()!="" &&
			   newPassword!=null && newPassword.trim()!="") {

				if(!basicService.changePassword(memberId, oldPassword, newPassword)){
					result.fail().setMessage("password incorrect");
				}
			}
		//}catch(Exception ec) {
			//ec.printStackTrace();
		//}
		
		
        return result;
    }

}
