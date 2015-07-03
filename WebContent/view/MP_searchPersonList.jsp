<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>高思实验室首页</title>
    <link  rel="stylesheet" type="text/css" href="../css/setpage.css">
    <link  rel="stylesheet" type="text/css" href="../css/MP_searchPersonList.css">
    <script type="text/javascript" src="../js/jquery-2.1.4.min.js"></script>
<body>
<script type="text/javascript">
	
	$(document).ready(function(){
		$.get("/Model/member/findAllmember",{},function(result){
			var table="";
			for(var i=0;i<result.length;i++){
			  table+="<tr><td><input type=\"checkbox\" name=\"ids\" value=\"3990\" class=\"checkbox\" /></td><td>"+result[i].memberId+"</td><td>"+result[i].memberName+"</td><td>"+result[i].category+"</td><td>"+result[i].email+"</td><td>"+result[i].birthDate+"</td><td>已启用</td><td><a href=\"MP_PersonDetails.jsp?id="+result[i].memberId+"\">[查看]</a></td></tr>";
			}
			$(".tb").append(table);
		},"json");
	});

function delPerson(){
	 var checkboxs=document.getElementsByClassName("checkbox");
	    var studentId;
	    for(var i=0;i<checkboxs.length;i++){
	        if(checkboxs[i].checked){
	           // alert(checkboxs[i].parentNode.parentNode.childNodes.item(0).childNodes.item(0).nodeValue="1")
	          studentId=checkboxs[i].parentNode.nextSibling.innerHTML;
	        }
	    }
	$.post("/Model/member/deleteMember",{"studentId":studentId},function(result){
		if(result=="success"){
			alert("删除成功");
			window.location.reload(true);
		}
		else
		{
			alert("删除失败");
		}	
		},"json");
}
</script>
<div>
    <button onclick="delPerson()" >删除</button>
<!--     <button >添加</button> -->
    <button >启用</button>
    <button >禁用</button>
  <!--     <select>
    <option>每页显示</option>
    <option>每页显示10页</option>
    <option>每页显示20页</option>
    <option>每页显示30页</option>
    </select> -->
    <input >
    <button type="submit">搜索</button>

</div>
<table class="tb" border="1"  cellpadding="10" cellspacing="0">
        <tr>
            <th class="check">
               选择
            </th>
            <th>
                学号
            </th>
            <th>
                姓名
            </th>
            <th>
               分组
            </th>
            <th>
                Email
            </th>
            <th>
                创建时间
            </th>
            <th>
              状态
            </th>
            <th>
                操作
            </th>
        </tr>
        <br/>
       


    </table>
<br/>
    <div id="setpage">
<!--         &nbsp&nbsp&nbsp&nbsp&nbsp
        <a href="">首页</a>&nbsp
        <a href="">上一页</a>
        <a href="">下一页</a>&nbsp
        <a href="">尾页</a>&nbsp
        <span>页次：</span>
        <span>1/3</span>
        <span>页</span>

        <span>转到：</span>
        <select>
            <option>第1页</option>
            <option>第2页</option>
            <option>第3页</option>
        </select> -->
    </div>

<script type="text/javascript"src="../js/setpage.js"></script>
<script type="text/javascript">
var users;
    function reloadpage(target)//target第几页
   {
     loadXMLDoc("url?page="+target,function()
        {
          if (xmlhttp.readyState==4 && xmlhttp.status==200)
             {
                var item;
                var jsonStr=xmlhttp.responseText;
                users=JSON.parse(jsonStr);
                for(var i=0;i<user.length;i++){
                    item+="<tr><td><input type='checkbox' name='ids' value='3990'class=\"checkbox\"/></td><td>"+users[i].studentId+"</td><td>"+users[i].userName+"</td><td>"+users[i].groupName+"</td><td>"+users[i].email+"</td><td>"+users[i].createDate+"</td>td>已启用</td><td><a href='MP_PersonDetails.html'>[查看]</a></td></tr>"
                }
                $("table").prepend(item);
             }
        });
   }

setpage(); 

</script>

</body>
</head>
</html>