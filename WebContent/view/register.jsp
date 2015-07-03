<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/Model/view/userRegister" method="post"id="information">

		姓名
		<input type="text" name="userName"/><br/>
		密码
		<input type="password" name="password"/><br/>
		


		类别 <select name="category">
						<option value="FEP">FEP</option>
						<option value="XNN">XNN</option>
						<option value="V-LAB">V-LAB</option>
						<option value="OME">OME</option>
						<option value="ACA">ACA</option>
		</select>
		
          
      
                &nbsp班号
                <input width="50px" type="text" size="4" name="classNo"/>
                &nbsp学号
                <input width="50px" type="text" size="9" name="userId"/>
		
		<input type="submit" value="注册"/>
		
	</form>
	
</body>
<script type="text/javascript">
</script>
</html>