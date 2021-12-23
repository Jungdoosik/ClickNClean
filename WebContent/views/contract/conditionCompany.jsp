<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="/assets/css/conditionCompany.css" rel="stylesheet" type="text/css"/>
    <link href="/assets/css/footer.css" rel="stylesheet" type="text/css" />
</head>
<style>
    #bodycss {
        font-family: "나눔스퀘어"
    }

    #header {
        border: 1px solid #72CCFF;
        width: 100%;
        height: 70px;
        box-sizing: content-box;
    }

    #contentArea {
        width: 1344px;
        height: 2000px;
        margin: 0 auto;
    }

    .contentHead {
        width: 1344px;
        height: 200px;
    }

    #contentTitle {
        display: block;
        width: 100%;
        margin-top: 100px;
        font-size: 50px;
        color: #0E76B3;
        font-weight: bold;
        text-align: center;

    }

    .contentBody {
        border: 1px solid black;
        width: 1116px;
        height: 418px;
        border-radius: 10px;
        margin: 0 auto;
    }

    #category {
        margin-top: 60px;
        font-size: 30px;
        float: left;
        background-color:#fafafa;
    }

    #categoryForm {
        float: left;
    }

    #categoryTitle {
        display: block;
        float: left;
        width: 100%;
        padding-left: 20px;
    }
    .option{
        margin-bottom: 10px;
        margin-left: 10px;
    }
    .categoryDiv {
        width: 100px;
    }
    #bodyTitle{
        display: block;
        text-align: center;
        height: 100px
    }
    #contractArea{
        float: left;
        width: 300px;
        height: 100%;
        margin-left: 53px;
    }
    #side{
        float: left;
        
    }
</style>

<body id="bodycss">
    <div id="header">

    </div>
    <div id="contentArea">
        <div class="contentHead">
            <span id="contentTitle">견적리스트</span>
            <div id="category">
                <span id="categoryTitle">
                조건사항: ${requestScope.cleanType}
                </span>
            </div>
        </div>
        <span id="bodyTitle"></span>

            <div class="contentBody">
            <div id=left>
               <div id=logoArea>
                   <img id=logo src="/assets/img/%EB%B6%80%EB%B6%84%EC%B2%AD%EC%86%8C2.JPG">
               </div> 
               <div id=toInfoArea>
                   <form>
                       <input type="submit" style="height: 60px" id="toInfoBtn" class="btn btn-outline-info" value="업체 프로필 보기">
                       
                   </form>
               </div>
            </div>
            <div id=right>
                <div id=reviewArea>
                    <div id=review>
                        
                    </div>
                </div>
                <div id=infoArea>
                    <div id=info>
                        
                    </div>
                </div>
                <div id=sideArea>
                    <div id=side>
                        
                        
                    </div>
                    <div id=contractArea>
                        <button id="contractBtn"
                        style="width: 100%; height: 100%;"
                        class="btn btn-outline-info">
                        바로 연락 해보기
                        </button>
                    </div>
                </div>
            </div>
        </div>

    </div>
		<div id="footer">
		<div id="caution">
			<p>클릭N클린은 통신판매중개자로서 청소서비스의 주거래 당사자가 아니며, 청소서비스의 분쟁과 계약사항은 회원사와
				당사자간에 있습니다.</p>
		</div>
		<div id="footer_inner">
			<div id="footer_inner_center">
				<div id="footer_inner_left">
					<span>클릭N클린 고객센터</span> <br> <a href="tel:010-3306-6303">010-3306-6303</a>
					<br> 영업시간 : 09:00 ~ 18:00 <br> (공휴일 휴무)
				</div>
				<div id="footer_inner_right">
					<div id="busyInfo">
						<p>클릭N클린(주)</p>
						<address>
							대표: 김승현 <br> 주소 : 서울특별시 중구 세종대로 136 파이낸스빌딩 3층 저스트코 S3119
							(태평로1가) <br> 사업자등록번호 : 585-86-00882 <br> 통신판매업번호 :
							2017-인천계양-0583호 <br> E-mail : help@clickNclean.co.kr <br>
							FAX : 070-5165-8603
						</address>
						<p>Copyright © 클릭N클린</p>
					</div>
					<ul>
						<li><a href="">개인정보취급방침</a></li>
						<li><a href="">이용약관</a></li>
						<li><a href="">관리자 페이지</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body></html>