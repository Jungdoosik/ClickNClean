<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="/assets/css/selectAllCompany.css" rel="stylesheet" type="text/css"/>
</head>
<style>
    #bodycss {
        font-family: "나눔스퀘어"
    }

    #header {
        border: 1px solid #72CCFF;
        width: 100%;
        height: 92px;
        box-sizing: content-box;
    }

    #contentArea {
        border: 1px solid black;
        width: 1344px;
        height: 2000px;
        margin: 0 auto;
    }

    .contentHead {
        border: 1px solid black;
        width: 1344px;
        height: 300px;
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
    }

    #categoryForm {
        float: left;
    }

    #categoryTitle {
        display: block;
        float: left;
        width: 130px;
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
</style>

<body id="bodycss">
    <div id="header">

    </div>
    <div id="contentArea">
        <div class="contentHead">
            <span id="contentTitle">클릭N클린의 청소 업체 리스트</span>
            <div id="category">
                <span id="categoryTitle">카테고리</span>
                
                <form id=categoryForm>
                    <table>
                        <tr>
                            <td>
                                <select class="option" aria-label="Default select example">
                                    <option selected>지역</option>
                                    <option value="1">one</option>
                                    <option value="2">Two</option>
                                    <option value="3">Three</option>
                                </select>
                            </td>
                            <td>
                                <select class="option" aria-label="Default select example">
                                    <option selected>지역</option>
                                    <option value="1">one</option>
                                    <option value="2">Two</option>
                                    <option value="3">Three</option>
                                </select>
                            </td>
                            <td>
                                <select class="option" aria-label="Default select example">
                                    <option selected>지역</option>
                                    <option value="1">one</option>
                                    <option value="2">Two</option>
                                    <option value="3">Three</option>
                                </select>
                            </td>
                            <td>
                                <select class="option" aria-label="Default select example">
                                    <option selected>지역</option>
                                    <option value="1">one</option>
                                    <option value="2">Two</option>
                                    <option value="3">Three</option>
                                </select>
                            </td>
                        </tr>
                    </table>


                </form>
            </div>
        </div>
        <span id="bodyTitle"></span>

            <div class="contentBody">
            <div id=left>
               <div id=logoArea>
                   <img id=logo src="img/%EB%B6%80%EB%B6%84%EC%B2%AD%EC%86%8C2.JPG">
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
                </div>
            </div>
        </div>

    </div>

</body>
</html>