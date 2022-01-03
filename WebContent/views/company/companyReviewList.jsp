<%@page import="kr.or.iei.review.model.vo.Review"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비밀번호 확인</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square.css" rel="stylesheet">
     <!--JQuery CDM-->
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
     <link rel="stylesheet" href="/assets/css/headerD.css">
     <link rel="stylesheet" href="/assets/css/footerD.css">
     <link rel="stylesheet" href="/assets/css/companyReviewList.css">
    
       
    
</head>
<body>
<%
		HashMap<String, Object> pageDataMap = (HashMap<String, Object>)request.getAttribute("pageDataMap");
		ArrayList<Review> list = (ArrayList<Review>)pageDataMap.get("list");
		String pageNavi = (String)pageDataMap.get("pageNavi");
		int currentPage = (int)request.getAttribute("currentPage");
	%>




<div id="allScreen">
  </div>
 <div id="wrap">
        	<!-- 헤더 -->
       <jsp:include page="/views/commons/headerD.jsp" />
  
        
         	<!-- 상단메뉴 -->
          
	         <div id="submenu">
	                <div id="navigator">
	                       <ul id="gnb">
	                           <li><a href="/co/coSearchCompanyInfo.do">프로필 설정</a></li>
								<li><a href="/views/company/companyReservationCalendar.jsp">예약현황</a></li>
								<li><a href="/co/coMemberAllList.do">회원정보</a></li>
								<li><a href="/co/coReviewAllList.do">청소리뷰</a></li>
	                       </ul>
	                 </div>
	           </div> 
	         <div class="line"></div>
	         <br><br>
         
        
         	<div id="content">
         	<div id="content1">
             <span><b>고객<small>의</small>소리</b></span>
                   <br><br>
                   <hr> 
                    <br><br>
                    <div id="reviewContent">
                    
                    <%if(!list.isEmpty()) {%>
                    
                    	<table id="reviewT">
	                    	
                    	<%for(int i =0; i <list.size(); i++){ %>
		                    <tr>
		                    	<td class="openCommentArea">
		                    	
			                    	<fieldset class="reviewArea" style="cursor: pointer" >
			                        <legend id="legendText"> <%=list.get(i).getUserName() %>-<%=list.get(i).getRegDate() %></legend><br>
			                            <div id="inReviewArea"><span id="cleanText"><%=list.get(i).getCleanType() %></span></div>
			                            <div id="inReviewArea"><span id="areaText"><%=list.get(i).getArea() %></span></div><br>
			                            <div id="reviewText">
			                            <a name="reviewContent" id="contentText" ><%=list.get(i).getContent() %></a>
			                          
			                            </div>
			                   		 </fieldset><br>
			                   	
		                    	</td>
		                    	
			                    	
			                 </tr>
		                
		                
		                <div id="reviewClickpopUp">
		                  <div id="popupTop"><span id="popupName"> </span>
		                       <div id="closeBtn" style="cursor: pointer">
		                           <button type="button" class="btn-close" id="close"><b>X</b></button>
		                       </div>
		                   </div>
		                   <br>
		                   <div>
		                      <div style="text-align: center; font-size: 15px"><p id="popupCleanType"> </p>   <span id="popupArea"></span> </div><br>                     
		                           <div id="popupContent">
		                           
		                       </div>
		                   </div>
		                   <br>
		                   <div style="margin-left: 50px">
		                       <form action="/review/reviewCommentWrite.do" method="post">
		                           <input type="text" size="50" name="comment" id="comment" placeholder="댓글을 작성해보세요"/>
									<input type="hidden" name="reviewNo" value="<%=list.get(i).getReviewNo()%>"/> 
									<input type="hidden" name="currentPage" value="<%=currentPage %>"/> 
									<input type="submit" onclick="return check();" value="작성"/>
		                       </form>
		                   
		               		</div>
		              			 <br>
           			</div> 
                    	<%} %>
                    		<tr>
                                <td style="text-align:center;"><%=pageNavi %></td>
                           	</tr>
	                   			
	                  </table> 		
                    <%} else{%>
                    	<h1>현재 고객의 소리가 없습니다.</h1>
                    <%} %>
  
                   </div>   
                </div>
                
            </div>
             
     
          <div class="line"></div>
           <!--푸터-->
      <jsp:include page="/views/commons/footerD.jsp" />
</div>
<script src="/assets/js/companyReviewList.js"></script>


</body>
</html>