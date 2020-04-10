# Web Hotel Management System
## 프로젝트 개요
관리자 및 사용자 환경의 웹 호텔 관리 시스템
<br/><br/><br/>

## 사용된 기술
Spring MVC, Mybatis, Ajax
<br/><br/><br/>

## 담당업무
* Controller

  * com.hotel.kg.employee.controller.MngGoodsController.java

  * com.hotel.kg.employee.controller.MngGoodsRestController.java
 
  * com.hotel.kg.employee.controller.MngInqryController.java

  * com.hotel.kg.employee.controller.MngInqryRestController.java
  
  * com.hotel.kg.employee.controller.MngMbrController.java
  
  * com.hotel.kg.employee.controller.MngMbrRestController.java
  
  * com.hotel.kg.employee.controller.MngMypageController.java
  
* Service (interface 생략)
  * com.hotel.kg.employee.service.MngGoodsSvcImpl.java
 
  * com.hotel.kg.employee.service.MngInqrySvcImpl.java
  
  * com.hotel.kg.employee.service.MngMbrSvcImpl.java
  
  * com.hotel.kg.employee.service.MngMyPageSvcImpl.java
  
* DAO Interface
  * com.hotel.kg.employee.dao.IGoodsDao.java
  
  * com.hotel.kg.employee.dao.IMngGoodsDao.java
  
  * com.hotel.kg.employee.dao.IInqryDao.java
  
  * com.hotel.kg.employee.dao.IMngInqryDao.java
  
  * com.hotel.kg.employee.dao.IMbrDao.java
  
  * com.hotel.kg.employee.dao.IMngMbrDao.java
  
  * com.hotel.kg.employee.dao.IMngrDao.java
  
* DTO, DAO Mapper 생략  

* JSP
  * src/main/webapp/WEB-INF/views/MngGoodsInsertForm.jsp
  
  * src/main/webapp/WEB-INF/views/MngGoodsList.jsp
  
  * src/main/webapp/WEB-INF/views/MngGoodsUpdateForm.jsp
  
  * src/main/webapp/WEB-INF/views/MngInqryContents.jsp
  
  * src/main/webapp/WEB-INF/views/MngInqryList.jsp
  
  * src/main/webapp/WEB-INF/views/MngMbrList.jsp
  
  * src/main/webapp/WEB-INF/views/MngMbrUpdateForm.jsp
  
  * src/main/webapp/WEB-INF/views/MngMyPage.jsp
  
  * src/main/webapp/WEB-INF/views/MngOptionUpdateForm.jsp
  
  * src/main/webapp/WEB-INF/views/MngRumtyUpdateForm.jsp
<br/><br/><br/>  
  
## Preview
![view1](https://user-images.githubusercontent.com/61999234/78984554-84e70c00-7b61-11ea-980d-d6f6839ea5d7.jpg)
<br/><br/><br/>

![view2](https://user-images.githubusercontent.com/61999234/78984557-86b0cf80-7b61-11ea-91b4-a32117b243e0.jpg)
<br/><br/><br/>

## Use-Case Diagram
![use_case_diagram](https://user-images.githubusercontent.com/61999234/78984565-8a445680-7b61-11ea-9a10-218bcbc3b4d4.jpg)
<br/><br/><br/>

## ER Diagram
![erd](https://user-images.githubusercontent.com/61999234/78984562-887a9300-7b61-11ea-8e6d-c603298b376c.jpg)
<br/><br/><br/>

## Class Diagram 일부
#### 관리자 - 상품관리
![goodsManage_class_diagram](https://user-images.githubusercontent.com/61999234/78984570-8d3f4700-7b61-11ea-885a-dc29222ef399.jpg)
<br/><br/><br/>

#### 관리자 - 고객문의
![inquiry_class_diagram](https://user-images.githubusercontent.com/61999234/78984574-8fa1a100-7b61-11ea-87a8-4b9bdb27bcd6.jpg)
<br/><br/><br/>




