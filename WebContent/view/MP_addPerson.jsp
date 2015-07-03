<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>高思实验室首页</title>
<link href="../css/MP_addPerson.css" type="text/css" rel="stylesheet">
<script src="../js/jquery-2.1.4.min.js"></script>

</head>

<body>
   <form action="/Model/member/adduser" class="adduser" method="post" >
    <div class="formBlock">           
    	 <label for="username">用户名:</label>
    	 <input name="loadname" id="username" placeholder="请输入登陆账号"  class="formElement" >
     </div>
     
     <div class="formBlock">
    	 <label for="password">密码:</label>
         <input name="password"  id="password" type="password" placeholder="请输入登陆密码" class="formElement" >
     </div>
     
     <div class="formBlock">
    	 <label for="password2">确认密码:</label>
         <input name="password2" id="password2" placeholder="请输入登陆密码" type="password" class="formElement" >
     </div>
     <div class="formBlock">
    	 <label for="group">分组:</label>
         <select name="category" id="gourp" >
            <option value="VLAB"> VLAB</option>
            <option value="FEP">FEP</option>
            <option value="XNN">XNN</option>
            <option value="ACA">ACA</option>
            <option value="temp">临时</option>
         </select>
       
     </div>
     <div class="formBlock">
    	<label></label><button  type="submit" class="submit" >确认</button>
     	<button type="button" class="reset">重置</button>
     </div>
   </form>
   <script type="text/javascript">
       (function(){
		   $('.reset').click(function(){
			   $('input').val("");
			   });
		   })();
   </script>
</body>
</html>
