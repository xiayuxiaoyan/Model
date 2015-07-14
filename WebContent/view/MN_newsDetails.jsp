<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>高思实验室首页</title>
    <script src="../js/jquery-2.1.4.min.js"></script>
	<script src="../ckeditor/ckeditor.js"></script>
	<script src="../ckeditor/adapters/jquery.js"></script>
    
    <script src="../js/jHtmlArea-0.8.min.js"></script>
    <link href="../css/textEditor/jHtmlArea.css" rel="stylesheet" type="text/css"/>
    <script src="../js/jHtmlArea.ColorPickerMenu-0.8.min.js"></script>
    <link href="../css/textEditor/jHtmlArea.ColorPickerMenu.css" rel="stylesheet" type="text/css"/>
    <link  rel="stylesheet" type="text/css" href="../css/MN_launchNews.css"/>
    <style type="text/css">
    	input{
    		border:0px;
    	}
    </style>
</head>    
 <body>   
    <form id="lanuch_News" action="/Model/view/addNews" class="addNews" method="post">
  <!--   <div>
        <h3>&nbsp所属分类： &nbsp&nbsp &nbsp&nbsp
        <select style="width: 200px;font-size:18px" name="catagory">
        <option>新闻</option>
        <option>公告</option>
    </select></h3>

    </div> -->
    <div>
        <h3> &nbsp&nbsp标题:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		<input style="width: 300px;" name="newsName" pattern="[4E00～9FFFh/d/w/s]{1,19}" >
        </h3>

    </div>
    <div>
        <h3> 发布人姓名:&nbsp&nbsp&nbsp&nbsp&nbsp
        <input style="width: 300px;" name="publishName">
        </h3>

    </div>

    <div>
        <h3>内容:</h3>
        <textarea cols="80" rows="20" name="content" id="content"></textarea>
    </div>
<!--     <div>
        <button style="background-color: #FFFFFF;font-size: large" class="submit" type="submit">发布</button>
        <button style="background-color: #FFFFFF;font-size: large" class="reset" type="button">重置</button>
        </form>
        
    </div> -->
 
  <script type="text/javascript"> 

  loadXMLDoc("url",function(){
	  var news="";
	  if (xmlhttp.readyState==4 && xmlhttp.status==200){
      	var jsonStr=xmlhttp.responseText;
      	news=JSON.parse(jsonStr);
      	$("form :input").eq(0).newsName;
      	$("form :input").eq(1).publishName;
      	$("form :input").eq(2).content;}
	  
  });
  
 
 
</script>





</body>
</html>
