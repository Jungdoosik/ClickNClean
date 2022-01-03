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
    <link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
     <link rel="stylesheet" href="/assets/css/headerD.css">
     <link rel="stylesheet" href="/assets/css/footerD.css">
     <link href="/assets/css/selectCondition.css?result" rel="stylesheet"
	type="text/css" />
    
       
    
</head>
<body>



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
         <br><br><br>
        
         	<div id="content">
             <div id="condition4">
					<div class="conditionName">청소 날짜</div>

					<div id="datepicker"></div>
					
					<div id="reservationInfo"></div>

					<input name="reqDate" id="date" type="text"
						style="margin-bottom: 50px;" /> 
					
				</div>
             </div>
     </div>
          <div class="line"></div>
           <!--푸터-->
      <jsp:include page="/views/commons/footerD.jsp" />





<script>
			$(function() {
				$("#datepicker")
						.datepicker({
									minDate : +1,
									dateFormat : "yy.mm.dd",
									appendText : "yyyy-mm-dd",
									monthNames : [ '1월', '2월', '3월', '4월',
											'5월', '6월', '7월', '8월', '9월',
											'10월', '11월', '12월' ],
									dayNames : [ '일', '월', '화', '수', '목', '금',
											'토' ],
									dayNamesShort : [ '일', '월', '화', '수', '목',
											'금', '토' ],
									dayNamesMin : [ '일', '월', '화', '수', '목',
											'금', '토' ],
									showMonthAfterYear : true,
									nextText : '다음달',
									yearSuffix : '년',
									prevText : '',
									onSelect : function() {
										var currentDate = $("#datepicker")
												.datepicker("getDate");
										$('#date').val(
												$.datepicker
														.formatDate("yy-mm-dd",
																currentDate));

									}
								});
			});
		</script>
</body>
</html>