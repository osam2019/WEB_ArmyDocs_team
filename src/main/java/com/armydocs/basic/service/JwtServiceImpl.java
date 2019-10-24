package com.armydocs.basic.service;

import java.io.UnsupportedEncodingException;
import java.util.LinkedHashMap;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.armydocs.basic.vo.*;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jws;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;


public class JwtServiceImpl {
    
    private static final String SALT =  "armydocsSecret";
     
    public <T> String create(String key, UserVo data, String subject){
        String jwt = Jwts.builder()
                         .setHeaderParam("typ", "JWT")
                         .setHeaderParam("regDate", System.currentTimeMillis())
                         .setSubject(subject)
                         .claim(key, data)
                         .signWith(SignatureAlgorithm.HS256, this.generateKey())
                         .compact();
        return jwt;
    }   
 
    private byte[] generateKey(){
        byte[] key = null;
        try {
            key = SALT.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
         
        return key;
    }
    
    public boolean isUsable(String jwt) throws Exception {
        
		
       // try{
			
            Jws<Claims> claims = Jwts.parser().setSigningKey(this.generateKey()).parseClaimsJws(jwt);
			return true;
			
		//}catch (Exception e) {
			
		//	e.printStackTrace();
		//	throw new Exception();
			/*개발환경!!!
			 * return false;*/
			 
		//}
	}
    
    
    // 토큰 값을 해석해서 Map으로 셋팅 후 리턴해줌
    public Map<String, Object> get(String key) throws Exception {
        
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();
		String jwt = request.getHeader("Authorization");
        
        //System.out.println("JWT = " + jwt);
		
        Jws<Claims> claims = null;
		claims = Jwts.parser().setSigningKey(SALT.getBytes("UTF-8")).parseClaimsJws(jwt);
		
		Map<String, Object> value = (LinkedHashMap<String, Object>)claims.getBody().get(key);
		return value;
	}
    
    public int getMemberId() throws Exception {
        
		return (int) (this.get("member").get("idx"));
	}
    
    
    
}
