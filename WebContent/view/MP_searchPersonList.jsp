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
    </head>
<body>
<script type="text/javascript">
	
	$(document).ready(function(){
/* 		$.get("/Model/member/findAllmember",{},function(result){
			var table="";
			for(var i=0;i<result.length;i++){
			  table+="<tr><td><input type=\"checkbox\" name=\"ids\" value=\"3990\" class=\"checkbox\" /></td><td>"+result[i].memberId+"</td><td>"+result[i].memberName+"</td><td>"+result[i].category+"</td><td>"+result[i].email+"</td><td>"+result[i].birthDate+"</td><td>已启用</td><td><a href=\"MP_PersonDetails.jsp?id="+result[i].memberId+"\">[查看]</a></td></tr>";
			}
			$(".tb").append(table);
		},"json"); */
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

<table class="tb tableContent" border="1"  cellpadding="10" cellspacing="0">
        <tr>
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

    </table>
<br/>
    <div id="page">
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

<script type="text/javascript"src="../js/mHome.js"></script>
<script type="text/javascript">
var users;
var item="";
var  pagesize = 12; 
    function reloadPagePersonList(target)//target第几页
   {
     loadXMLDoc("/Model/member/findAllmember?page="+target,function()
        {
          if (xmlhttp.readyState==4 && xmlhttp.status==200){
                var jsonStr=xmlhttp.responseText;
                users=JSON.parse(jsonStr);
                $(".remove").remove();
                //$("table").remove(item);
                for(var i=0;i<users.length;i++){
                    item+="<tr class='remove'><td>"+users[i].memberId+"</td><td>"+users[i].memberName+"</td><td>"+users[i].category+"</td><td>"+users[i].email+"</td><td>"+users[i].birthDate+"</td><td>已启用</td><td><a class='personDetails' href=''>[查看]</a><a href='' class='removePerson'>[删除]</a></td></tr>"
                }
                $(".tableContent").append(item);
                item="";
                if(users)
                    //totalpage =Math.ceil(users[users.length-1]/pagesize); 
                	totalpage=56;//??????????????????????????????????????????????后台传回一定条病和总条数
                setpage();
                $(".personDetails").click(function(event){
                	var $personTrs=$(this).parent().parent().children();
                	var $personTr=$personTrs.eq(0).text();
                	location.href="/Model/view/MP_PersonDetails.jsp";
                	event.preventDefault();
                	return false;
                });
                $(".removePerson").on("click",function(event){
                	alert(a);
                	event.preventDefault();
                	return false;
                });
          }
        });
   }
    
    function gotopage(target) 
    {     
        cpage = target;        //把页面计数定位到第几页 
        $(".item").remove();
        setpage(); 
        reloadPagePersonList(target);    //调用显示页面函数显示第几页,这个功能是用在页面内容用ajax载入的情况 
    } 
    reloadPagePersonList(1); 
</script>

</body>

</html>