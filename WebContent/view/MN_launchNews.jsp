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
		<input style="width: 300px;" name="newsName" pattern="[4E00～9FFFh/d/w/s]{1,19}" placeholder="不超过19字">
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
    <div>
        <button style="background-color: #FFFFFF;font-size: large" class="submit" type="submit">发布</button>
        <button style="background-color: #FFFFFF;font-size: large" class="reset" type="button">重置</button>
        </form>
        
    </div>
 
  <script type="text/javascript"> 
  //第一种文本编辑器
   	/* 	CKEDITOR.disableAutoInline = true;
		$( document ).ready( function() {
			$( '#content' ).ckeditor(); // Use CKEDITOR.replace() if element is <textarea>.
			
		} );   */
//第二种文本编辑器 
  $(function() {
            $("#content").htmlarea({
               toolbar: ["html", "|",
                      "forecolor",  // <-- Add the "forecolor" Toolbar Button
                        "|", "bold", "italic", "underline",
						 "|", "p", "h1", "h2", "h3",
						  "|", "link", "unlink"] // Overrides/Specifies the Toolbar buttons to show
                });
        }); 
 // $(".reset").click(function(){alert($("textarea").val());});//测试使用
 
 
</script>



</head>


</body>
</html>
