<%@page import="kr.or.iei.company.model.vo.Company"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비밀번호 확인</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link
	href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square.css"
	rel="stylesheet">
<!--JQuery CDM-->
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="/assets/css/headerD.css">
<link rel="stylesheet" href="/assets/css/footerD.css">
<link rel="stylesheet" href="/assets/css/companyProfileUpdate.css">



</head>
<body>
	<%
		Company co = (Company) session.getAttribute("company");
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

			<div id="content1">
				<form action="/co/coProfileInsert.do" method="post">
					
						<%
							if (co != null) {
						%>
						<span><B>프로필 설정</B></span>
						<hr>
						<table id="t1">
							<tr>
								<td>
									<div>프로필 사진</div>
								</td>
								<td colspan="3">
									<div id="coImg"></div>
									<div>
										<input type="file" class="form-control" id="inputImg"
											style="width: 25%"> <input type="hidden"> <label>사진
											선택</label>
										<p>
											320px 이상 <br> 정사각형 이미지 <br> 확장자 jpg, png 가능
										</p>
									</div>
								</td>
							</tr>
						</table>

						<hr>
						<table id="t2">
							<tr>
								<td>
									<div>업체명</div>
								</td>
								<td style="text-align: center;">
									<div>
										<%=co.getCoName()%></div>
								</td>
								<td>청소지역</td>
								<td>
									<div class="area1" style="margin: 10px;">
										<select name="area1" onchange="categoryChange(this)">
											<option value>시/도 선택</option>
											<option value="서울">서울</option>
											<option value="경기">경기</option>
											<option value="인천">인천</option>
											<option value="강원">강원</option>
											<option value="대전">대전</option>
											<option value="세종" checked>세종</option>
											<option value="충남">충남</option>
											<option value="충북">충북</option>
											<option value="부산">부산</option>
											<option value="울산">울산</option>
											<option value="경남">경남</option>
											<option value="경북">경북</option>
											<option value="대구">대구</option>
											<option value="광주">광주</option>
											<option value="전남">전남</option>
											<option value="전북">전북</option>
											<option value="제주">제주</option>
										</select> <select name="area2" id="state">
											<option>군/구 선택</option>
										</select>

									</div>
								</td>
							</tr>
						</table>

						<hr>
						<table id="t3">
							<tr>
								<td>
									<div>소개</div>
								</td>
								<td colspan="3">
									<div class="area1">
										<textarea id="text" name="coIntroduce" cols="90" rows="11"
											maxlength="499" style="resize: none; font-size: 1rem;"
											placeholder="업체를 자랑해주세요."></textarea>
										<br> <span id="textLength">0</span>/500
									</div>
								</td>
							</tr>
						</table>
						<hr>
						<br>
						<br> <span><b>청소분야</b></span><br>
						<hr>
						<input class="form-check-input" type="checkbox" name="cleanType"
							value="입주" /> 입주청소
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input class="form-check-input" type="checkbox" name="cleanType"
							value="이사" />
						이사청소&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input class="form-check-input" type="checkbox" name="cleanType"
							value="부분청소" /> 부분청소(화장실/거실/주방/베란다)
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<hr>
						<br>
						<br>


						<div id="history">
							<span><b>History</b></span>
							<hr>
							<textarea name="history" cols="50" rows="7" maxlength="499"
								name="history" style="resize: none; font-size: 1rem;"
								placeholder="경력사항을 작성해주세요. ex)0000년 우수방역업체 선정."></textarea>
							<hr>
						</div>

						<div id="grade">
							<span>등급결제</span>
							<hr>
							<input class="gradeChoice" type="checkbox" name="gradeType"
								value="choiceNo" checked="checked" /> 선택안함 <input
								class="gradeChoice" type="checkbox" name="gradeType"
								value="gold" /> gold (25,000원) <input class="gradeChoice"
								type="checkbox" name="gradeType" value="vip" /> vip (35,000원)
							<hr>
							<span>영업시간, 상담시간 설정</span><br>
							<hr>
							영업시간 : <input type="time" name="startTime" /><input type="time"
								name="endTime" /><br> 상담시간 : <input type="time"
								name="startMeetTime" /><input type="time" name="endMeetTime" />
							<hr>
						</div>

						<div id="checkArea">
							<input type="submit" id="submitBtn" value="회원정보 변경" /><input
								type="button" id="main" value="메인페이지"
								onclick="location.replace('/');" />
						</div>

					</div>
				</form>

			
		</div>
		<div class="line"></div>

		<%
			} else {
		%>
		<a href="/views/commons/error.jsp"></a>

		<%
			}
		%>
		<!--푸터-->
		<jsp:include page="/views/commons/footerD.jsp" />

	</div>
	<script src="/assets/js/companyProfileUpdateScript.js"></script>


</body>
</html>