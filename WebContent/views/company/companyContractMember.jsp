<%@page import="kr.or.iei.contract.model.vo.Contract"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="kr.or.iei.company.model.vo.Company"%>
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
     <link rel="stylesheet" href="/assets/css/companyContractMember.css">
    
        
    
</head>
<body>

<%
		Company co = (Company)session.getAttribute("company");
		HashMap<String, Object> pageDataMap = (HashMap<String, Object>)request.getAttribute("pageDataMap");
		ArrayList<Contract> list = (ArrayList<Contract>)pageDataMap.get("list");
		String pageNavi = (String)pageDataMap.get("pageNavi");
		int currentPage = (int)request.getAttribute("currentPage");
		String memberKey = (String)request.getAttribute("memberKey");
		
	%>



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
             <div id="memberInfo">
                        <div id="MemberSearch">
                            <form action="/co/coMemberSearch.do" method="get">
                                <span>회원검색 : </span>
                                <select name="searchType" style="height: 30px">
                                    <option value="contractNo">계약번호</option>
                                    <option value="userId">ID</option>
                                    <option value="phone">전화번호</option>
                                </select>

                                <input type="text" size="30" name="memberKey" placeholder="회원 정보를 입력해주세요." />
                                <input type="submit" value="검색" class="btn btn-primary"/>
                            </form>
                        </div>
                        <div id="infoArea">
                            <%if(!list.isEmpty() && co.getCoId() != null){ %>
                            <table id="searchT">
                                <tr>
                                    <th>계약번호</th>
                                    <th>청소분류</th>
                                    <th>이름</th>
                                    <th>ID</th>
                                    <th>전화번호</th>
                                    <th>이메일</th>
                                    <th>예약일</th>
                                    <th>청소예약날짜</th>
                                    <th>청소여부</th>
                                    <th>요청승인</th>
                                </tr>
                                <%for (Contract c : list){ %>
                                <tr>
                                    <td><%=c.getContractNo() %></td>
									<td><%=c.getCleanType() %></td>
									<td><%=c.getUserName() %></td>
									<td><%=c.getUserId() %></td>
									<td><%=c.getPhone() %></td>
									<td><%=c.getEmail() %></td>
									<td><%=c.getContractFinDate() %></td>
									<td><%=c.getReqDate() %></td>
                                    <td><%=c.getCleanYN() %></td>  
                                    <td><a href="/co/CoMemberCoCheckYNChange.do?contractNo=<%=c.getContractNo()%>&coCheckYN=<%=c.getCoCheckYN()%>"><button class="YNBtn"  style="width:100%; height:25px;"><%=c.getCoCheckYN() %></button></a></td>  
                                    
                                </tr>
                                <%} %>
                                <tr>
                                <td colspan="10" align = "center"><%=pageNavi %></td>
                            	</tr>
                            </table>
                            <%}else{%>
                            <h3>현재 회원 목록이 없습니다.</h3>
                            <%} %>
                        </div>
                    </div>
             </div>
     </div>
          <div class="line"></div>
           <!--푸터-->
      <jsp:include page="/views/commons/footerD.jsp" />




</body>
</html>