
var imgArray ;   //取得的user对象  
var newsName;	//新闻名字
var firstWidth ; 
var secondWidth;
var totalpage,pagesize,cpage,count,curcount,outstr; //setPage.js中使用
$(document).ready(function(){
/* **********************************滚动一定距离中心滑轮********************************/

var blockIdArray=["#first","#about","#news","#employ"];
window.location.hash=blockIdArray[0];

function getBlockId(){				//获得当前块id的下标
	var nowId=window.location.hash;
	for(var i=0;i<blockIdArray.length;i++){
		if(nowId == blockIdArray[i])
			return i;
	}
}

var scrollFunc = function (e) {
    var direct = 0;
    var i = getBlockId();
    e = e || window.event;
    if (e.wheelDelta) {  //判断浏览器IE，谷歌滑轮事件             
        if (e.wheelDelta > 0) { //当滑轮向上滚动时
        	if(i==0){
        		return false;
        	}else{
        		var blockId=blockIdArray[i-1];
        		$(".shadow a[href="+blockId+"]").click();
        		window.location.hash=blockIdArray[i-1];
        	}
        }
        if (e.wheelDelta < 0) { //当滑轮向下滚动时
        	if(i==blockIdArray.length-1){
        		return false;
        	}else{
        		var blockId=blockIdArray[i+1];
        		$(".shadow a[href="+blockId+"]").click();
        		window.location.hash=blockIdArray[i+1];
        	}
        }
    } else if (e.detail) {  //Firefox滑轮事件
            if (e.detail> 0) { //当滑轮向上滚动时
                // alert("滑轮上滚"+e.detail);
            }
            if (e.detail< 0) { //当滑轮向下滚动时
                // alert("滑轮虾滚"+e.detail);
            }
        }
    if(e.preventDefault){
        e.preventDefault();
    }
        // ScrollText(direct);
        return false;
}
    //给页面绑定滑轮滚动事件
    if (document.addEventListener) {
        document.addEventListener('DOMMouseScroll', scrollFunc, false);
    }
    //滚动滑轮触发scrollFunc方法
    document.onmousewheel = scrollFunc; 
/////////////////////////////////////////////////////////////////////////////////

var xmlhttp;/////////////////////////////////封装ajax
function loadXMLDoc(url,cfunc)
{
   if (window.XMLHttpRequest)
      {// code for IE7+, Firefox, Chrome, Opera, Safari
         xmlhttp=new XMLHttpRequest();
      }
   else
       {// code for IE6, IE5
          xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        }
   xmlhttp.onreadystatechange=cfunc;
   xmlhttp.open("GET",url,true);
   xmlhttp.send(null);
}


function loadImage (urlArray) {   //异步加载图片
	var imgArrays = document.getElementsByClassName("memberPhoto");
	var personNames=document.getElementsByClassName("nameStyle");
	for (var i = 0; i<urlArray.length; i++) {
		imgArrays[i].onload=function(){
			imgArrays[i].onload=null;	
		}	
		imgArrays[i].src=urlArray[i].imgUrl;//图片对象地址
		personNames[i].innerText=urlArray[i].memberName;//????????.memberName
	}

}
function loadImgList(groupName) //发送请求  动态加载组员图片列表  分页
   {
     loadXMLDoc("about?groupName="+groupName,function()
        {
          if (xmlhttp.readyState==4 && xmlhttp.status==200)
             {
                var jsonStr=xmlhttp.responseText;
                imgArray=JSON.parse(jsonStr);
                loadImage(imgArray) ; //预加载图片并显示/////////////待更改                
             }
        });
 } 
 function loadNewsList(num) //请求初始部分新闻列表
   {
     loadXMLDoc("get9Page",function()
        {
          if (xmlhttp.readyState==4 && xmlhttp.status==200)
             {
            var jsonStr=xmlhttp.responseText;
            var newsArray=JSON.parse(jsonStr);
            var fnewsNameList="";
            var fnewsDateList="";
            for(var i=0;i<num;i++){
                fnewsNameList +="<a class='newsDetail' href=''id ='"+newsArray[i].newsId+"'>"+newsArray[i].newsName+"</a><br>";
                fnewsDateList +=newsArray[i].publishDate+"<br>";
            }
            $(".leftContent p").append(fnewsNameList);
            $(".rightContent p").append(fnewsDateList);
            $(".newsDetail").on("click",function(){  //查看新闻具体内容
            	firstWidth = $(".news").width();
            	secondWidth =$(".newsList").width();
            	//newsName=$(this).text();
             	$("body").animate({
             	 scrollLeft:(firstWidth+secondWidth+15)  //让body的scrollTop等于pos的top，就实现了滚动
             	 },500);
                /*****************************ajax获取新闻内容****************************************/
                var newsId=$(this).attr("id");
                loadNewsContent(newsId);

             	$("body").css("overflow-y","hidden");//隐藏导航条
            	$(".shadow .button").click(function () {	//返回首页显示滚动条
            		$("body").css("overflow-y","auto");
            	});
                return false;
             });
                
             }
        });
 } 


function loadNewsContent(newsId) //请求新闻内容
   {
     loadXMLDoc("getByID?"+"id="+newsId,function()
        {
          if (xmlhttp.readyState==4 && xmlhttp.status==200)
             {  
        	    $(".publicName").remove();
                var jsonStr=xmlhttp.responseText;
                var newsDetail=JSON.parse(jsonStr);
                $(".newsName").text(newsDetail.newsName);
                $(".ncDate").text("发布时间："+newsDetail.publishDate);
                var publishName="<em class='publicName'>发布人："+newsDetail.publishName;
                $(".ncDate").append(publishName);
                $(".article").text(newsDetail.content);///////////////待更改
                
             }
        });
 } 
              
var num=9;//首页显示的条数
loadNewsList(num);//初始加载新闻列表???????????????

/******************************上下滑动效果***************************/
$(".shadow .button").click(function () {	//上下滑动效果
	var d=$(this).attr("href");
    var scroll_offset = $(d).offset();  //得到pos这个div层的offset，包含两个值，top和left

 	$("body").animate({
 	 scrollTop:scroll_offset.top  //让body的scrollTop等于pos的top，就实现了滚动
 	 },500);
});

$(".photoLink").click(function(){  //点击组的图片

	var groupName = $(this).attr("id"); 
	var $groupImg=$(".groupName");
	var url="images/"+ groupName +".png";
	$groupImg.attr("src",url);
        /*****************************左右滚动*************************************/

	firstWidth=$(".about").width();
	secondWidth =$(".group").width();
 	$("body").animate({
 	 scrollLeft:(firstWidth+15)  //让body的scrollTop等于pos的top，就实现了滚动
 	 },500);

	$("body").css("overflow-y","hidden");//隐藏导航条
	$(".shadow .button").click(function () {	//返回首页显示滚动条
		$("body").css("overflow-y","auto");
	});

    //var imgArray = ["images/GCL.jpg","images/GZY.jpg","images/HG.jpg","images/HMC.jpg","images/LDS.jpg","images/MYW.jpg","images/ZH.jpg","images/ZK.png","images/ZX.png"];
	/*****************************异步加载图片***************************/
	loadImgList(groupName); 
	return false;
});
$(".memberPhoto").click(function(){      //点几个人照片，战士个人详细信息
	firstWidth=$(".about").width();
	secondWidth =$(".group").width();	
	var n=$(this).parent().find("p").text();
	$("body").animate({
 		scrollLeft:(firstWidth+secondWidth+30)  //让body的scrollTop等于pos的top，就实现了滚动
 	},500);
 	for(var user in imgArray){
		if(imgArray[user].memberName==n){
			$(".personselfImg").attr("src",imgArray[user].imgUrl);
			$(".userName").text(imgArray[user].memberrName);
			$(".birthday").text("出生年月："+imgArray[user].birthday);
			$(".grade").text("年级："+imgArray[user].grade);
			$(".nowAddress").text("现居地："+imgArray[user].nowAddress);
			$(".address").text("户口地："+imgArray[user].address);
			$(".email").text("Email："+imgArray[user].email);
			$(".mobilePhone").text("电话："+imgArray[user].mobilePhone);
			$(".skill").text("个人技能："+imgArray[user].skill);
			$(".awards").text("获得奖励:"+imgArray[user].award);
			$(".selfEvaluation").text("自我评价："+imgArray[user].selfEvaluation);		
		}
	}
	return false;
});
var flagMore=0;
//初始化 
cpage = 1; 
totalpage = 0; 
pagesize = 12; 
outstr = ""; 
$(".more").click(function(){		//查看更多条新闻
	firstWidth=$(".news").width();
 	$("body").animate({
 	 scrollLeft:(firstWidth+15)  //让body的scrollTop等于pos的top，就实现了滚动
 	 },500);

	$("body").css("overflow-y","hidden");//隐藏导航条
	$(".shadow .button").click(function () {	//返回首页显示滚动条
		$("body").css("overflow-y","auto");
	});
	if(flagMore==0)
	{reloadpage(1);}
   // setpage();//动态设置加载新闻列表和翻页具体见setpage.js????????
    flagMore=1;
	return false;
});



//$(".newsDetail").on("click",".newsDetail",function(){  //查看新闻具体内容
/*$(".newsDetail").on("click",function(){  //查看新闻具体内容
	firstWidth = $(".news").width();
	secondWidth =$(".newsList").width();
	//newsName=$(this).text();
 	$("body").animate({
 	 scrollLeft:(firstWidth+secondWidth+15)  //让body的scrollTop等于pos的top，就实现了滚动
 	 },500);
    ///////////////////////////ajax获取新闻内容/////////////////////////////////////////////
    var newsId=$(this).attr("id");
    alert(newsId);
    //loadNewsContent(newsId);
 	$("body").css("overflow-y","hidden");//隐藏导航条
	$(".shadow .button").click(function () {	//返回首页显示滚动条
		$("body").css("overflow-y","auto");
	});
    return false;
 });*/

 /******************************返回按钮来回滚动**************************/
 $(".pic1").click(function(){       
	firstWidth=$(".about").width();
	secondWidth =$(".group").width();
 	$("body").animate({
 	 scrollLeft:0 //让body的scrollTop等于pos的top，就实现了滚动
 	 },500); 	
	$("body").css("overflow-y","auto");
	
/*	var imgArrays = document.getElementsByClassName("memberPhoto");
	var personNames=document.getElementsByClassName("nameStyle");
	for (var i = 0; i<urlArray.length; i++) {
		imgArrays[i].onload=function(){
			imgArrays[i].onload=null;	
		}	
		imgArrays[i].src=null;//删除图片对象地址
		personNames[i].innerText=null;//????????.memberName
	}*/

 });
  $(".pic2").click(function(){
	firstWidth=$(".about").width();
	secondWidth =$(".group").width();
 	$("body").animate({
 	scrollLeft:(firstWidth-14)  //让body的scrollTop等于pos的top，就实现了滚动
 	 },500); 	
	$("body").css("overflow-y","auto");
 });
    $(".pic3").click(function(){
 	$("body").animate({
 	scrollLeft:0  //让body的scrollTop等于pos的top，就实现了滚动
 	 },500); 	
	$("body").css("overflow-y","auto");
 });
    $(".pic4").click(function(){
	firstWidth=$(".news").width();
 	$("body").animate({
 	scrollLeft:firstWidth  //让body的scrollTop等于pos的top，就实现了滚动
 	 },500); 	
	$("body").css("overflow-y","auto");
 });

 //sendNewsListRequest();  //加载首页新闻列表

});