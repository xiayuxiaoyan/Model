<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>高思实验室</title>
    <link href="../css/newsContent.css" rel="stylesheet" type="text/css">
    <link href="../css/newsList.css" rel="stylesheet" type="text/css">
    <link href="../css/personself.css" rel="stylesheet" type="text/css">
    <link href="../css/group.css" rel="stylesheet" type="text/css">
    <link href="../css/home.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="../js/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="../js/home.js"></script>
<script type="text/javascript">
//注册
/***
 *功能：隐藏和显示div
 *参数divDisplay：html标签id
 ***/
function show(divid) {
    document.getElementById(divid).style.display = "block";
}
function hideLogin() {
    document.getElementById("loginDiv").style.display = "none";
    var userPassword = document.getElementById("userPassword").value;
    if (userPassword == "123") {
        alert("登录成功")
    }
    else {
        alert("登陆失败")
    }
}
function hideSignUp() {
    document.getElementById("signUpDiv").style.display = "none";
}
/*function SetWinHeight(ob) { 
    var win=ob; 
    if (document.getElementById) { 
        if (win && !window.opera) { 
            if (win.contentDocument && win.contentDocument.body.offsetHeight) 
                {win.height = win.contentDocument.body.offsetHeight; }

            else if(win.Document && win.Document.body.scrollHeight) 
                {win.height = win.Document.body.scrollHeight; }
        } 
    } 
} 
 */
</script>
</head>
<body>
<div class="first" id="first">
    <div class="nav" >
        <img class="logo" src="../images/logo.png">
        <div class="login">
            <a href="#first" id="loginA" class="loginA" onclick="show('loginDiv')">登录|注册</a>

        </div>
        
        <ul>
            <li class="shadow"><a class="button" href="#first" >首页</a></li>
            <li class="shadow"><a class="button" href="#about" >关于我们</a></li>
            <li class="shadow"><a class="button" href="#news" >新闻公告</a></li>
            <li class="shadow"><a class="button" href="#employ" >实验室诚聘</a></li>
        </ul>
        <div class="loginDiv" id="loginDiv">
            <div class="loginLogo"><img src="images/logo.png"></div>
            <div class="userInput">
                <input type="text" placeholder="&nbsp用户名" name="username"/>
                <input type="password" placeholder="&nbsp密码" id="userPassword" name="password"/></div>
            <div class="loginButton">
                <input type="submit" name="login" value="登录" onclick="hideLogin()">
                <input type="submit" name="signUp" value="注册" onclick="show('signUpDiv');hideLogin()">
            </div>

        </div>
        <!--登陆界面-->
        <div class="signUpDiv" id="signUpDiv">
            <div class="loginLogo"><img src="images/logo.png"></div>
            <div class="userInput">
                <input type="text" placeholder="&nbsp用户名" name="username"/>
                <input type="password" placeholder="&nbsp密码" name="password"/>
                <input type="password" placeholder="&nbsp确认密码" name="password"/>
            </div>
            <div class="loginButton">
                <input type="submit" id="signUp" name="login" value="确认注册" onclick="hideSignUp('login')">
            </div>

        </div>
        

    </div>
</div><!--end of first-->

<!-- <iframe class="aboutIframe" id="aboutIframe" frameborder="no" scrolling="no" src="about.html" onload="SetWinHeight(this)" name="aboutIframe">
    
</iframe> -->
<div class="us">

<div class="about " id="about">
    <h1>关于我们</h1>

    <div class="line">
        <a class="photoLink" id="fep"><div class="photo">
            <p>FEP</p>
        </div></a>
        <a class="photoLink" id="vlab"> <div class="photo">
            <p>V-LAB</p>
        </div></a>
       <a class="photoLink" id="ome"><div class="photo">
            <p>OME</p>
        </div></a>
        <a class="photoLink" id="xnn"><div class="photo">
            <p>XNN</p>
        </div></a>
        <a class="photoLink" id="aca"><div class="photo">
            <p>ACA</p>
        </div></a>
    </div>

</div><!--end of about-->

<div class="group">
    <img src="../images/moveleft.png" class="moveLeft pic1">
    <div class="title">
        <img class="rectangle" src="../images/rectangle.png"/>
        <img class="FEP" src="../images/fep.jpg"/>
        <img class="rectangle" src="../images/rectangle.png"/>
    </div><!--title-->
<div class="photoBlock">
    <div class="photoLittleBlock">
        <div class="photoBackground">
            <img class="memberPhoto" src=""/>
            <p class="nameStyle"></p>
        </div><!--照片背景白色-->
        <div class="photoBackground">
            <img class="memberPhoto" src=""/>
            <p class="nameStyle"></p>
        </div><!--照片背景白色-->
        <div class="photoBackground">
            <img class="memberPhoto" src=""/>
            <p class="nameStyle"></p>
        </div><!--照片背景白色-->
        <div class="photoBackground">
            <img class="memberPhoto" src=""/>
            <p class="nameStyle"></p>
        </div><!--照片背景白色-->
        <div class="photoBackground">
            <img class="memberPhoto" src=""/>
            <p class="nameStyle"></p>
        </div><!--照片背景白色-->
        <div class="photoBackground">
            <img class="memberPhoto" src=""/>
            <p class="nameStyle"></p>
        </div><!--照片背景白色-->
    </div><!--照片内分组，横排,第一组-->

    <div class="photoLittleBlock">
        <div class="photoBackground">
            <img class="memberPhoto" src=""/>
            <p class="nameStyle"></p>
        </div><!--照片背景白色-->
        <div class="photoBackground">
            <img class="memberPhoto" src=""/>
            <p class="nameStyle"></p>
        </div><!--照片背景白色-->
        <div class="photoBackground">
            <img class="memberPhoto" src=""/>
            <p class="nameStyle"></p>
        </div><!--照片背景白色-->
        <div class="photoBackground">
            <img class="memberPhoto" src=""/>
            <p class="nameStyle"></p>
        </div><!--照片背景白色-->
        <div class="photoBackground">
            <img class="memberPhoto" src=""/>
            <p class="nameStyle"></p>           
        </div><!--照片背景白色-->
        <div class="photoBackground">
            <img class="memberPhoto" src=""/>
            <p class="nameStyle"></p>            
        </div><!--照片背景白色-->
    </div><!--照片内分组，横排，第二组-->
    </div><!--照片模块-->
</div><!--group-->

<div class="personself">
    <img src="../images/moveleft.png" class="moveLeft pic2">
 <div class="pContent">
    <div class="message">
        <div class="img">
            <div class="pPhoto">
              <img src="" width="160" height="180" class="personselfImg" >
            </div>
        </div>
    
        <div class="part1">
            <div class="userName">关振宇</div>
                <p>学校：大连理工大学</p>
                <p>院系：软件学院</p>
                <p class="birthday">出生年月：</p>
                <p class="grade">年级：</p>
                <p class="nowAddress">现居地：</p>
                <p class="nowAddress">户口地：</p>
                <p class="email">Email：</p>
                <p class="mobilePhone" >电话：</p>
        </div>
    </div>
 
    <div class="part2">
       <p class="">项目经验：<p class="project">过多不可详述</p></p>
       <p class="skill">个人技能：</p>
      <p class="awards">获得奖项：</p>
      <p class="selfEvaluation">自我评价：</p>
    </div> 
</div><!--end of pcontent-->
</div><!--personself-->
</div>






<div class="newsBlock">
<div class="news" id="news">
    <div>
        <h1>新闻公告 <span><a  class="more" href="">more</a></span></h1>
    </div>

    <div class="content1">
        <img class="border1" src="../images/newsborder1.jpg">

        <div class="leftContent">
            <p> 
            </p>
        </div>

        <div class="rightContent">
            <p></p>

        </div>
        <img class="border2" src="../images/newsborder2.jpg">

    </div>

</div><!--end of news-->
<div class="newsList">
      <img src="../images/moveleft.png" class="moveLeft pic3">
      <div class="container">
           
            <p class="page" id="page">
<!--                <a href="" class="pageNumber">上一页</a>
                <a href="" class="pageNumber">首页</a>
                <a href="" class="pageNumber">[1]</a>
                <a href="" class="pageNumber">[2]</a>
                <a href="" class="pageNumber">[3]</a>
                <a href="" class="pageNumber">[4]</a>
                <a href="" class="pageNumber">[5]</a>
                <a href="" class="pageNumber">[6]</a>
                <a href="" class="pageNumber">[7]</a>
                <a href="" class="pageNumber">尾页</a>
                <a href="" class="pageNumber">下一页</a> -->
            </p>
        </div><!--end of contener-->
    </div><!--end of newsList-->
<div class="newsContent">
        <img src="../images/moveleft.png" class="moveLeft pic4">
        <div class="newscontainer">
            <h2 class="newsName"></h2>
            <div class="content">
                <p class="ncDate"> <em class="publicName"></em></p>
                <pre class="article">

                </pre>
            </div> 
        </div>
</div><!--end of newsContent-->
</div><!--end of newsBlock-->
<div class="employ" id="employ">
    <h1>实验室诚聘</h1>

    <div class="whiteMan">
        <a href="aplay.jsp" class="applay" target="_blank"><img src="../images/employ.jpg"></a>
    </div>
    <div class="words">
        <img src="../images/words.jpg">
    </div>
</div>
    <script type="text/javascript" src="../js/setpage.js"></script>
</body>
</html>






