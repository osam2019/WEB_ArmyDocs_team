package com.armydocs.interceptor;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.armydocs.basic.service.BasicService;
import com.armydocs.basic.vo.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.armydocs.basic.service.JwtServiceImpl;

public class JwtHandler extends HandlerInterceptorAdapter {
    
    
    private static final String HEADER_AUTH = "Authorization";

	@Autowired private JwtServiceImpl jwtService;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		
        final String token = request.getHeader(HEADER_AUTH);
        
        try {
            if(token != null && !token.trim().equals("") && jwtService.isUsable(token)){
                //System.out.println("[SUCCESSED TOKEN]" + token);
                return true;

            }else{

                //System.out.println("---------------------Auth NO");
                //throw new Exception();
                return true;
            }
            
        }catch(Exception ec){
            //System.out.println("[FAILED TOKEN] : " + token);
        }
        
		
        return true;
	}
    
    
}