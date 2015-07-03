<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 4.01 Transitional//EN"
        "http://www.w3.org/TRhtml4/loose.dtd">
<html >
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>A</title>
</head>

<body>

       <form  action="/GsLab/view/userRegister" method="post">
                <input type="text" name="userName"/>   
            <select name="category">
                <option value="1">FEP</option>
                <option value="2">XNN</option>
                <option value="3">V-LAB</option>
                <option value="4">OME</option>
                <option value="5">ACA</option>
            </select>
    
             
                <input type="submit"/>
         </form> 

</body>

</html>

