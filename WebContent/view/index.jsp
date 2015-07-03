<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>高斯实验室</title>
    <link href="../css/my.css" rel="stylesheet" type="text/css">
    <script src="../js/lunbotu.js"></script>
</head>
<body>
<a href="register.jsp">注册</a>
	<a href="login.jsp">登录</a>
	<a href="infoSubmit.jsp">简历上传</a>
	<a href="secretPage.jsp">访问内部网页</a>
<div class="container">
    <div class="head">
        <div class="login">
            <a href="login.jsp">登陆</a>
            <a href="infoSubmit.jsp">注册</a>
            </div>


    </div>
    <div class="navbar">
        <ul class="navbar1">
            <li class="daohang"><a class="button" href="#">首页</a></li>
            <li class="daohang"><a class="button" href="#">新闻公告</a></li>
            <li class="daohang"><a class="button" href="#">科研队伍</a></li>
            <li class="daohang"><a class="button" href="#">科研成果</a></li>
            <li class="daohang"><a class="button" href="#">合作交流</a></li>
            <li class="daohang"><a class="button" href="#">关于实验室</a></li>
            <li class="daohang"><a class="button" href="#">学术资源</a></li>
            <li class="daohang"><a class="button" href="#">论坛</a></li>
            <li class="daohang"><a class="button" href="#">实验室诚聘</a></li>
        </ul>

    </div>

   <div class="search">
        <p>本站搜索
            <input type="text" name="user">
            <input type="submit" value="搜索">
            <span class="date">今日时间 2015年4月22日 星期三</span></p>
    </div>
    <div class="contain">
        <div class="block1">
            <div class="contain1">
                <div class="title">
                    <p>实验室简介</p>
                    <span><a href="#">More</a> </span>
                </div>
                <div class="blank1">

                </div>
            </div>
            <div class="contain4">
                <div class="title">
                    <p>主要科研成果</p>
                    <span><a href="#">More</a> </span>
                </div>
                <div class="blank1">

                </div>
            </div>
        </div>
        <div class="block2">
            <div class="contain2">
                <div class="title">
                    <p>最新公告</p>
                    <span><a href="#">More</a> </span>
                </div>
                <div class="blank1">

                </div>
            </div>
            <div class="contain6">
                <div class="title">
                    <p>要点新闻</p>
                    <span><a href="#">More</a> </span>
                </div>
                <div class="blank1">

                </div>
            </div>
        </div>
        <div class="block3">
            <div class="contain3">
                <div class="title">
                    <p>学术资源入口</p>
                    <span><a href="#">More</a> </span>
                </div>
                <div class="blank1">

                </div>
            </div>
            <div class="contain5">
                <div class="title">
                    <p>论坛入口</p>
                    <span><a href="#">More</a> </span>
                </div>
                <div class="blank1">

                </div>
            </div>
        </div>


    </div>
    <div class="foot">
        <img src="../imgs/line.png">
        <span class="from">@版权所有：大连理工大学软件学院 高思实验室
	地址：大连经济开发区图强街111号</span>
    </div>

</div>





</body>
<script>
    document.getElementById("lunboStage").lunbotu(1000, 400, 3, 2000);
</script>
</html>