# ![Logo](https://i.imgur.com/GDbmjCS.png)

국군 장병을 위한 설문 조사 플랫폼

## 컴퓨터 구성 / 필수 조건 안내 (Prerequisites)

* [Java 8](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html) / [Tomcat 8.5](https://tomcat.apache.org/download-80.cgi) / [Maven 3.3.9](http://maven.apache.org/download.cgi) / [MySQL 5.7](https://dev.mysql.com/downloads/mysql/5.7.html) 
* No Internet needed
* Build DB using init.sql

## 기술 스택 (Technique Used)

![tech](https://i.imgur.com/I4rm4ao.png)

## 설치 안내 (Installation Process)

To install Armydocs application, run the following commands:

```bash
$ git clone https://github.com/osam2019/WEB_ArmyDocs_Team.git
$ cd WEB_ArmyDocs_Team
$ mvn clean package
$ cp -rf target/*.war $CATALINA_HOME/webapps/ROOT.war 
$ service tomcat start
```

## 사용법 (Getting Started)

### Step 1. 설문 목록
![survey1](https://i.imgur.com/Hdhepyd.png)

### Step 2. 설문 등록
![survey2](https://i.imgur.com/ngPA14N.png)

### Step 3. 설문 진행
![survey3](https://i.imgur.com/yZMkQTd.png)

### Step 4. 설문 통계
![survey4](https://i.imgur.com/ZPu0Aph.png)

## 파일 정보 및 목록 (File Manifest)

```sh
WEB_ArmyDocs_Team
│  .gitignore
│  pom.xml
│  README.md
│  init.sql   // DB queries
│  
└─src
    └─main
        ├─java
        │  └─com
        │      └─armydocs
        │          │  LoginController.java
        │          │  MainController.java
        │          │  SurveyController.java
        │          │  
        │          ├─basic
        │          │  ├─dao	  // dao
        │          │  ├─service	  // service
        │          │  └─vo	  // dto
        │          │          
        │          ├─interceptor  // handler
        │          └─util
        │                  
        └─webapp
            │  
            ├─resources		// static resouces
            │  ├─bxslider
            │  ├─css
            │  ├─fontawesome   
            │  ├─img
            │  └─js
            │          
            └─WEB-INF
                │  spring-servlet.xml	// servlet context
                │  web.xml		// web deployment describer
                │  
                ├─jsp		// templates
                │  │  
                │  ├─include	// common components
                │  └─survey	// survey components
                │          
                ├─spring	// spring config files
                └─sqlmap	// sql mapper files
                        

```

## 저작권 및 사용권 정보 (Copyright / End User License)

The MIT License (MIT)
Copyright (c) 2007 James Newton-King
https://raw.githubusercontent.com/JamesNK/Newtonsoft.Json/master/LICENSE.md
The MIT License (MIT)
 
Copyright (c) 2007 James Newton-King
 
Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:
 
The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
 
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
### 주의사항
* 이 레포지토리의 모든 리소스(이미지, svg, ai, DB 등등)의 저작권은 cars0106(github)에게 있습니다.
<a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/4.0/"><img alt="크리에이티브 커먼즈 라이선스" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-nd/4.0/88x31.png" /></a><br />이 저작물은 <a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/4.0/">크리에이티브 커먼즈 저작자표시-비영리-변경금지 4.0 국제 라이선스</a>에 따라 이용할 수 있습니다.

## 배포자 및 개발자의 연락처 정보 (Contact Information)

* Junyoung Choi (cupjoo@naver.com)
* Heesung Jung (qlcskfgml78@naver.com)
* Jisoo Lee (jisoolee1997@naver.com)
* Eunjin Kim (dmswls315@naver.com)

## 알려진 버그 (Known Issues)

* Uncompleted Responsive Design

## 문제 발생에 대한 해결책 (Troubleshooting)

Please run this app on the web browser or iphone.

## 크레딧 (Credit)
This open source software created by the Military Soldier Open SW Collective Education Program.

## 업데이트 정보 (Change Log)
The site will soon be updated with Vue.js

Link: https://github.com/armypago/armydocs
