<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 4.01 Transitional//EN"
        "http://www.w3.org/TRhtml4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>简历填写</title>
</head>


<body>


	<h1 id="title" align="center">高思实验室招新调查问卷</h1>

	<h3>提交简历后可以使用你的用户名密码登录</h3>
	<form id="information" action="/Model/view/userRegister" method="post">

		姓名 <input type="text" name="userName" /> <br /> 
		密码<input
			type="password" name="password" /><br /> 
			
		 性别 男<input type="radio" name="gender" value="0" /> 
		女<input type="radio" name="gender" value="1" /> 
			
			类别 <select name="category">
			<option value="FEP">FEP</option>
			<option value="XNN">XNN</option>
			<option value="V-LAB">V-LAB</option>
			<option value="OME">OME</option>
			<option value="ACA">ACA</option>
		</select> 
		<br/>
		  班号不填会报错？？？？？？？？？
		 班号<input width="50px" type="text" size="4" name="classNo" />
		 &nbsp学号<input
			width="50px" type="text" size="9" name="studentId" /> 
			班级类型 
		    <select name="classType">
			<option value="1">英强</option>
			<option value="0">日强</option>
			<option value="2">网络</option>
		</select>
		 
		&nbsp班级 <input type="text" name="grade" /> 

			专业方向 <input type="text" size="10" name="major" /> 
			Email <input type="email" name="email"
				size="15" />

	
	 	联系电话 <input type="tel" size="10" name="mobilePhone" /> 
			&nbsp&nbsp QQ <input type="text"
				size="15" name="QQ"/>
				
			 	生日<input type="text" name="birthday"/>
				

		 
		<br/>
			1.你的学业成绩怎么样
            <input type="text" name="subTitle11"/>
             
         <br/>  2.     &nbsp平均成绩:
                <input type="text" size="3" name="subTitle12"/>
                
              	  年级排名
                <input type="text" size="3" name="subTitle13"/>

          <p >2.你觉得自己能否轻松应对学业课程？
             

           

                <textarea name="subTitle2" rows="10" cols="110" maxlength="300" placeholder="请根据加入小组类型以及发展计划进行说明（最少50字）"></textarea>
       

</p>


			
			<input type="submit" value="提交" />
	</form>
</body>

</html>

