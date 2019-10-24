package com.armydocs.util;

import java.awt.image.BufferedImage;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.StringReader;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public class FileUtil {
	
	
	/**
	 * 파일풀패스를 리턴한다.(중복을 방지한다.)
	 * 
	 * @params
	 * 		isAutoName : 파일이름자동생성여부
	 * 		uploadPath : 서버업로드경로
	 * 		originName : 원본파일이름
	 * @returns	
	 * 		[0] : 서버업로드경로
	 * 		[1] : 서버업로드파일이름
	 */
	private static String getFileNameForUpload(boolean isAutoName, String uploadPath, String originName){
		
		String uploadName = "";		// 업로드할 파일이름

		String type = originName.substring(originName.lastIndexOf(".") + 1, originName.length()); // 확장자
		
		
		if(isAutoName)			
			uploadName = "temp_" + UUID.randomUUID() + "." + type;
		else
			uploadName = originName;

		
		// 중복이름방지
		int i = 1;
		String nm = uploadName;
		while (true) {
			if(new File(uploadPath + nm + "." + type).exists()) 
				nm = uploadName + "("+i+")";
			else
				break;				
			i++;
		}
		
		return nm;
		
	}
	
	/**
	 * [일반]파일업로드
	 * 회원들이 업로드하는 파일들의 디렉터리는 /resources/upload/user/ 하위에 배치한다.
	 * 업로가능한확장자목록:jpeg,jpg,png,gif,xls,xlsx,
	 * 만약 중복을 허용하지않고 파일이름을 직접 지정했는데 이미 중복파일명이 있으면 파일명을 자동으로 생성 후 저장한다.
	 * 
	 * @param mRequest       : 파일정보
	 * @param directoryPath  : 업로드할디렉터리경로(예: "/resources/upload/temp/"), null이면 /resources/upload/temp 경로에 저장된다.
	 * @param isFileOverlap  : 파일을 덮어쓰기할지여부
	 * @param directFileName : 파일이름직접지정할경우, null이면 안하는것으로 판단
	 * @return
	 * 		FileResult객체
	 */
	public static String upload(MultipartHttpServletRequest mRequest, boolean isFileOverlap, String directFileName) {
		
		//logger.debug("{}{}{}{}{}{}", new Object[]{"파일업로드시작.. 업로드디렉터리경로:",directoryPath,",파일덮어쓰기여부:",isFileOverlap,",파일이름(직접지정안할시null):",directFileName});
		
		String directoryPath = "/resources/tmp/";
		
		
		
		List<String> extension = new ArrayList<String>();
		extension.add("jpeg");extension.add("JPEG");
		extension.add("png");extension.add("PNG");
		extension.add("gif");extension.add("GIF"); 
		extension.add("jpg");extension.add("JPG"); 
		extension.add("xls");extension.add("XLS");
		extension.add("xlsx");extension.add("XLSX");
		
//		String rootPath = "resources/upload/";
//		if(directoryPath==null){
//			directoryPath = "temp/";
//		}
//		directoryPath = rootPath + directoryPath;
		
		 
		
		// 파일을 업로드할 경로
		String uploadPath = mRequest.getSession().getServletContext().getRealPath(directoryPath) + File.separator;
		File dir = new File(uploadPath);
		if (!dir.isDirectory()) { dir.mkdirs(); }
	
		Iterator<String> iter = mRequest.getFileNames();

		if (iter.hasNext()) {
		
			// 파일정보를 가져옴
			MultipartFile mFile = mRequest.getFile(iter.next());
			
			// 파일 존재 유뮤 검사
			if (mFile.isEmpty()) {
				System.out.println("no file");
				return null;
			}
		
			
			// 최초 클라이언트 파일패스를 가져옴
			String originalFileName = mFile.getOriginalFilename();
			
			
			if(directFileName!=null){// 파일이름 직접지정한 경우
				
				originalFileName = directFileName;
			
			}else{// 파일이름직접지정하지 않은 경우
				
				// 확장자 가져옴
				String type = originalFileName.substring(originalFileName.lastIndexOf(".") + 1, originalFileName.length());
				
				// 확장자 검사
				boolean isAvaliableExtension = false;
				for (int i = 0; i < extension.size(); i++) {
					if (type.toString().equals(extension.get(i).toString())) {
						isAvaliableExtension = true;
						break;
					}
				}
				if (!isAvaliableExtension) {
					System.out.println("no ext");
					return null;
				}
				
			}
			
			// 덮어쓰기 여부
			String uploadFileName = null;
			if(isFileOverlap){				
				uploadFileName = originalFileName;			
			}else{
				uploadFileName = getFileNameForUpload(true, uploadPath, originalFileName);
			}
			
			
			/*
			 * directoryPath  : 실제 업로드시킬 파일디렉터리경로(ex:resources/images/test.png)
			 * uploadPath     : 실제 업로드시킬 파일경로
			 * uploadFileName : 실제 업로드될 파일이름(확장자포함)
			 */
			try{
				
				//logger.info("{}{}{}{}{}", new Object[]{"파일쓰기를 시도합니다.. 원본파일명:",originalFileName,", 업로드타깃경로:",uploadPath,uploadFileName});
				
				mFile.transferTo(new File(uploadPath+uploadFileName));
				
				/*result.setFilePath(directoryPath);
				result.setFileName(uploadFileName);
				result.setOriginFileName(originalFileName);
				result.setSize(mFile.getSize());				
				result.setSorf("0000");*/
				
				return uploadFileName;
			
			} catch (Exception e) {				
				e.printStackTrace();
			} 

			
		} // if end
		return null;
	} // fileUpload end
}
