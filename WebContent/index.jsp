<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>클릭N클린</title>
	<!--bootstap-->
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    <!--JQuery CDM-->
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <!--아이콘-->
    <script src="https://kit.fontawesome.com/edadbd266e.js" crossorigin="anonymous"></script>
	<!--bootstap-->
    <!--<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans|Varela+Round">-->
    <!--<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">-->
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">-->
    <!--  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>-->
    <!-- <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>-->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
	<!-- css -->
 	<link href="/assets/css/index.css" rel="stylesheet" type="text/css" />
</head>


<body>
	
    <div id="wrap">
        <!--헤더-->
        <div id="header">
            <div id="headerFixed">
                <div id="headerInner">
                    <div id="logo">
                        <a href="/"><img src="/assets/img/logo_icon.png" class="logoImg"></a>
                    </div>

                    <div id="estimate">
                        <div id="estimateBtn" class="rounded-pill"><a href=""><b>견적 확인하기</b></a></div>
                    </div>

                    <div id="menu">
                        <div id="login">
                            <ul>
                                <li><a href="">회원가입</a></li>
                                <li><a href="/views/member/loginMemberCompany.jsp">로그인</a></li>
                            </ul>
                        </div>
                        <div id=menuIconForm>
                            <img src="/assets/img/menu_icon.png" id='menuIcon'>
                        </div>
                    </div>

                </div>
            </div>
            <div id="sub_menu">
                <div><img src='/assets/img/logo_icon.png' class="logoImg"></div>
                <div id="sub_menu_inner">
                    <ul>
                        <li><a href=''>마이페이지(회원/업체/관리자)</a></li>
                        <li><a href=''>공지사항 및 FAQ(회원/업체)</a></li>
                        <li><a href=''>1:1 문의(회원)</a></li>
                        <li><a href=''>우리 동네 업체 찾기</a></li>
                        <li><a href=''>청소 항목 소개</a></li>
                    </ul>
                </div>
                <hr>
                <div>
                    <dl>
                        <dt>[유선 상담 안내]</dt>
                        <dd>1600-1777</dd>
                    </dl>
                    <dl>
                        <dt>[고객센터 운영 시간]</dt>
                        <dd>09:00 ~ 18:00</dd>
                    </dl>
                </div>

            </div>

            <script>
                $('#menuIcon').click(function() {
                    if ($('#sub_menu').css('visibility') == 'hidden') {
                        $('#sub_menu').css('visibility', 'visible');
                        $('#sub_menu').animate({
                            right: '0px',
                        }, 1000);
                    } else {

                        $('#sub_menu').animate({
                            right: '-280px'
                        }, 1000, function() {
                            $('#sub_menu').css('visibility', 'hidden');
                        });
                    }

                });
            </script>
        </div>
        <!--컨테이너 블럭-->
        <div id="container">


            <!--베너(케로셀)-->
            <div id="topBanner">
                <div id="carousel">
                    <div id="carouselExampleIndicators" class="carousel slide h-100" data-bs-ride="carousel">
                        <div class="carousel-indicators h-100">
                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                        </div>
                        <div class="carousel-inner h-100">
                            <div class="carousel-item active h-100">
                                <img src="/assets/img/northern-lights-g231a332cd_1920.jpg" class="d-block w-100 h-100" alt="...">
                            </div>
                            <div class="carousel-item">
                                <img src="/assets/img/northern-lights-g231a332cd_1920.jpg" class="d-block w-100 h-100" alt="...">
                            </div>
                            <div class="carousel-item">
                                <img src="/assets/img/northern-lights-g231a332cd_1920.jpg" class="d-block w-100 h-100" alt="...">
                            </div>
                        </div>
                        <button class="carousel-control-prev h-100" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon h-100" aria-hidden="true"></span>
                            <span class="visually-hidden h-100">Previous</span>
                        </button>
                        <button class="carousel-control-next h-100" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                            <span class="carousel-control-next-icon h-100" aria-hidden="true"></span>
                            <span class="visually-hidden h-100">Next</span>
                        </button>
                    </div>

                </div>
            </div>
            <!--컨텐츠-->
            <div id="content">
                <div id="processguide">
                    <div id="processguide_text">
                        <br><br>

                        <h2>마음에 들었다면 예약까지 한번에!</h2>
                        <p>신청까지 단 30초, 내 조건에 딱 맞는 업체 상세 정보과 견적 제공</p>
                    </div>
                    <div id="processguide_img">
                        <ul>
                            <li>
                                <p class="processguide_img"></p>
                                <dl>
                                    <dt>정보입력</dt>
                                    <dd>30초면 작성완료!</dd>
                                </dl>
                            </li>
                            <li>
                                <p align='center' class="processguide_img"></p>
                                <dl>
                                    <dt>업체비교</dt>
                                    <dd>주변업체 비교견적 제공</dd>
                                </dl>
                            </li>
                            <li>
                                <p class="processguide_img"></p>
                                <dl>
                                    <dt>청소예약</dt>
                                    <dd>간편하게 업체와 직접 예약!</dd>
                                </dl>
                            </li>
                        </ul>
                    </div>
                </div>
                <div id="company_clean_info">
                    <div class="inner_title">
                        <br>
                        <h2>견적 확인 전에 클릭N클린이 궁금하다면?</h2>
                    </div>
                    <ul>
                        <li><a href="">우리 동네 업체 찾기</a></li>
                        <li><a href="">청소 항목&범위 소개</a></li>
                    </ul>


                </div>
                <div id="review">
                    <div class="inner_title">
                        <h2>실사용자가 작성한 솔직한 리뷰</h2><a href=""> 후기 더보기 > </a>
                    </div>
                    <div id="review_inner">
                        <div class="container-xl" id="review_center">
                            <div class="carousel_inner" id="review_inner">
                                <div class="col-md-13 mx-auto">
                                    <div id="myCarousel" class="carousel slide" data-bs-ride="carousel" data-interval="0">
                                        <!-- Carousel indicators -->
                                        <ol class="carousel-indicators" id="carousel-indicators">
                                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                            <li data-target="#myCarousel" data-slide-to="1"></li>
                                            <li data-target="#myCarousel" data-slide-to="2"></li>
                                        </ol>

                                        <!-- Wrapper for carousel items -->
                                        <div class="carousel-inner">


                                            <div class="carousel-item active">

                                                <div class="row">

                                                    <div class="col-sm-4">
                                                        <div class="thumb-wrapper">
                                                            <div class="title">
                                                                <h4>요금 150,000원</h4>

                                                                <p>경기도 용인시 기흥구 / 오피스텔 / 16평</p>
                                                                <p>김**</p>
                                                            </div>
                                                            <div class="thumb-content">

                                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu sem tempor, varius quamㅇㄹㄴㅇㄹㄴㅇㄹㅇㄴㄹㄴㅇㄹㄴㅇㄹㄴㅇㄴㄹㄴㅇㄹㄴㄹㄴㅇㄹㄴㅇㄹㄴㄹㄴㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄹㄴㅇ.</p>

                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-sm-4">
                                                        <div class="thumb-wrapper">
                                                            <div class="title">
                                                                <h4>요금 250,000원</h4>

                                                                <p>경기도 용인시 기흥구 / 오피스텔 / 16평</p>
                                                                <p>김**</p>
                                                            </div>
                                                            <div class="thumb-content">

                                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu sem tempor, varius quamㅇㄹㄴㅇㄹㄴㅇㄹㅇㄴㄹㄴㅇㄹㄴㅇㄹㄴㅇㄴㄹㄴㅇㄹㄴㄹㄴㅇㄹㄴㅇㄹㄴㄹㄴㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄹㄴㅇ.</p>

                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-sm-4">
                                                        <div class="thumb-wrapper">
                                                            <div class="title">
                                                                <h4>요금 350,000원</h4>

                                                                <p>경기도 용인시 기흥구 / 오피스텔 / 16평</p>
                                                                <p>김**</p>
                                                            </div>
                                                            <div class="thumb-content">

                                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu sem tempor, varius quamㅇㄹㄴㅇㄹㄴㅇㄹㅇㄴㄹㄴㅇㄹㄴㅇㄹㄴㅇㄴㄹㄴㅇㄹㄴㄹㄴㅇㄹㄴㅇㄹㄴㄹㄴㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄹㄴㅇ.</p>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>


                                            <div class="carousel-item">

                                                <div class="row">

                                                    <div class="col-sm-4">
                                                        <div class="thumb-wrapper">
                                                            <div class="title">
                                                                <h4>요금 450,000원</h4>

                                                                <p>경기도 용인시 기흥구 / 오피스텔 / 16평</p>
                                                                <p>김**</p>
                                                            </div>
                                                            <div class="thumb-content">

                                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu sem tempor, varius quamㅇㄹㄴㅇㄹㄴㅇㄹㅇㄴㄹㄴㅇㄹㄴㅇㄹㄴㅇㄴㄹㄴㅇㄹㄴㄹㄴㅇㄹㄴㅇㄹㄴㄹㄴㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄹㄴㅇ.</p>

                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-sm-4">
                                                        <div class="thumb-wrapper">
                                                            <div class="title">
                                                                <h4>요금 550,000원</h4>

                                                                <p>경기도 용인시 기흥구 / 오피스텔 / 16평</p>
                                                                <p>김**</p>
                                                            </div>
                                                            <div class="thumb-content">

                                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu sem tempor, varius quamㅇㄹㄴㅇㄹㄴㅇㄹㅇㄴㄹㄴㅇㄹㄴㅇㄹㄴㅇㄴㄹㄴㅇㄹㄴㄹㄴㅇㄹㄴㅇㄹㄴㄹㄴㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄹㄴㅇ.</p>

                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-sm-4">
                                                        <div class="thumb-wrapper">
                                                            <div class="title">
                                                                <h4>요금 650,000원</h4>

                                                                <p>경기도 용인시 기흥구 / 오피스텔 / 16평</p>
                                                                <p>김**</p>
                                                            </div>
                                                            <div class="thumb-content">

                                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu sem tempor, varius quamㅇㄹㄴㅇㄹㄴㅇㄹㅇㄴㄹㄴㅇㄹㄴㅇㄹㄴㅇㄴㄹㄴㅇㄹㄴㄹㄴㅇㄹㄴㅇㄹㄴㄹㄴㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄹㄴㅇ.</p>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>


                                            <div class="carousel-item">

                                                <div class="row">

                                                    <div class="col-sm-4">
                                                        <div class="thumb-wrapper">
                                                            <div class="title">
                                                                <h4>요금 250,000원</h4>

                                                                <p>경기도 용인시 기흥구 / 오피스텔 / 16평</p>
                                                                <p>김**</p>
                                                            </div>
                                                            <div class="thumb-content">

                                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu sem tempor, varius quamㅇㄹㄴㅇㄹㄴㅇㄹㅇㄴㄹㄴㅇㄹㄴㅇㄹㄴㅇㄴㄹㄴㅇㄹㄴㄹㄴㅇㄹㄴㅇㄹㄴㄹㄴㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄹㄴㅇ.</p>

                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-sm-4">
                                                        <div class="thumb-wrapper">
                                                            <div class="title">
                                                                <h4>요금 250,000원</h4>

                                                                <p>경기도 용인시 기흥구 / 오피스텔 / 16평</p>
                                                                <p>김**</p>
                                                            </div>
                                                            <div class="thumb-content">

                                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu sem tempor, varius quamㅇㄹㄴㅇㄹㄴㅇㄹㅇㄴㄹㄴㅇㄹㄴㅇㄹㄴㅇㄴㄹㄴㅇㄹㄴㄹㄴㅇㄹㄴㅇㄹㄴㄹㄴㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄹㄴㅇ.</p>

                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-sm-4">
                                                        <div class="thumb-wrapper">
                                                            <div class="title">
                                                                <h4>요금 250,000원</h4>

                                                                <p>경기도 용인시 기흥구 / 오피스텔 / 16평</p>
                                                                <p>김**</p>
                                                            </div>
                                                            <div class="thumb-content">

                                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu sem tempor, varius quamㅇㄹㄴㅇㄹㄴㅇㄹㅇㄴㄹㄴㅇㄹㄴㅇㄹㄴㅇㄴㄹㄴㅇㄹㄴㄹㄴㅇㄹㄴㅇㄹㄴㄹㄴㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄹㄴㅇ.</p>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>


                                        </div>



                                        <!-- Carousel controls -->
                                        <a class="carousel-control-prev" id="carousel-control-prev" href="#myCarousel" data-slide="prev">
                                            <i class="fa fa-angle-left"></i>
                                        </a>
                                        <a class="carousel-control-next" id="carousel-control-next" href="#myCarousel" data-slide="next">
                                            <i class="fa fa-angle-right"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

        <!--입점신청하기-->
        <div id="withClean">
            <a href="">
                <div id="withClean_inner">
                    <div id=withClean_inner_center>
                        <span>청소 잘하는 사장님! 클릭N클린과 함께 성장해 보세요</span>
                        <span>입점 신청하기</span>
                    </div>
                </div>
            </a>
        </div>

        <!--푸터-->
        <div id="footer">
            <div id="caution">
                <p>클릭N클린은 통신판매중개자로서 청소서비스의 주거래 당사자가 아니며, 청소서비스의 분쟁과 계약사항은 회원사와 당사자간에 있습니다.</p>
            </div>
            <div id="footer_inner">
                <div id="footer_inner_center">
                    <div id="footer_inner_left">
                        <span>클릭N클린 고객센터</span>
                        <br>
                        <a href="tel:1600-1777">1600-1777</a>
                        <br>
                        영업시간 : 09:00 ~ 18:00
                        <br>
                        (공휴일 휴무)
                    </div>
                    <div id="footer_inner_right">
                        <div id="busyInfo">
                            <p>클릭N클린(주)</p>
                            <address>
                                대표: 김승현
                                <br>
                                주소 : 서울특별시 중구 세종대로 136 파이낸스빌딩 3층 저스트코 S3119 (태평로1가)
                                <br>
                                사업자등록번호 : 585-86-00882
                                <br>
                                통신판매업번호 : 2017-인천계양-0583호
                                <br>
                                E-mail : help@clickNclean.co.kr
                                <br>
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


    </div>


</body>
</html>