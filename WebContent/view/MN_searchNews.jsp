<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<head lang="en">
    <meta charset="UTF-8">
    <title>高思实验室首页</title>
    <script type="text/javascript" src="../js/jquery-2.1.4.min.js"></script>
    <link  rel="stylesheet" type="text/css" href="../css/setpage.css">
    <link  rel="stylesheet" type="text/css" href="../css/MN_searchNews.css">
    <script type="text/javascript" src="../mHome.js"></script>
<body>
<script type="text/javascript">
   /*  var checkboxs=document.getElementsByClassName("checkbox");
    var newsId;
    for(var i=0;i<checkboxs.length;i++){
        if(checkboxs[i].checked){
           // alert(checkboxs[i].parentNode.parentNode.childNodes.item(0).childNodes.item(0).nodeValue="1")
          newsId=checkboxs[i].parentNode.nextSibling.innerHTML;
        }
    }
     loadXMLDoc("url?newsId="+newsId,function()// 传过去被删除新闻的id，要求后台重新传回当页新的数据
        {
          if (xmlhttp.readyState==4 && xmlhttp.status==200)
             {
                var item;
                var jsonStr=xmlhttp.responseText;
                news=JSON.parse(jsonStr);
                for(var i=0;i<user.length;i++){
                    item+="<tr><td><input type='checkbox' name='ids' value='3990'class="checkbox" /></td><td>"+news[i].newsId+"</td><td>" +news[i].newsName+"</td><td> "+news[i].publishName+"</td><td><a href=''>修改</a></td></tr>"
                }
                $("table").prepend(item);
             }
        }); */
</script>

<table class="tb" border="1"  cellpadding="10" cellspacing="0">
        <tr>
            <th>
               id
            </th>
            <th>
                标题
            </th>
            <th>
               添加时间
            </th>

            <th>
                操作
            </th>
        </tr>
        <br/>
<tr><td> 1</td><td> 第一天</td><td> 2015-01-01 11：22：22</td><td><a href="">[查看]</a><a href="">[删除]</a></td></tr>

    </table>
<br/><br/><br/><br/><br/>
<div id="setpage"> </div>
<script type="text/javascript">
var totalpage,pagesize,cpage,count,curcount,outstr; 
//初始化 
cpage = 1; 
totalpage = 0; 
pagesize = 12; 
outstr = ""; 
var news;
    function reloadpage(target)//target第几页
   {
     loadXMLDoc("url?page="+target,function()
        {
          if (xmlhttp.readyState==4 && xmlhttp.status==200)
             {
                var item="";
                var jsonStr=xmlhttp.responseText;
                news=JSON.parse(jsonStr);
                for(var i=0;i<user.length;i++){
                    item+="<tr><td><input type='checkbox' name='ids' value='3990'class='checkbox' /></td><td>"+news[i].newsId+"</td><td>" +news[i].newsName+"</td><td> "+news[i].publishName+"</td><td><a href=''>修改</a></td></tr>"
                }
                $("table").prepend(item);
             }
        });
   }
 
</script>
<script type="text/javascript"src="../js/setpage.js"></script>
<script type="text/javascript">
setpage();
</script>
</body>
</head>
</html>
