var $nav=$(".nav");
var curMenu=$("#managerPerson");
var curLink=$(curMenu).find("ul li:nth-child(2) a")[0];
$nav.click(function(){
	var menuId=$(this).attr("id");
	$(".menuList").css("z-index","-10000");
	$(menuId).css("z-index","1000");
    curMenu=$(menuId);
	changeLink($(curMenu).find("li:nth-child(2) a")[0]);
	
});
function changeLink(target)
{
	if(target==curLink) return;
	$(curLink).css("background","#fff");
	curLink=target;
	$(curLink).css("background","rgb(102,183,224)");
}
$(".menuList li a").click(function(){
	  changeLink(this);
	});
$(".menuList li a").hover(function(){
	if(this==curLink) return;
    $(this).css("background","rgb(242,242,242)");
},function(){
	if(this==curLink) return;
    $(this).css("background","#fff");
	});
var today=new Date();       //时间
var year=today.getFullYear();
var month=today.getMonth();
var date=today.getDate();
var day=today.getDay();
var dayArray = new Array();
dayArray[0]="日";
dayArray[1]="一";
dayArray[2]="二";
dayArray[3]="三";
dayArray[4]="四";
dayArray[5]="五";
dayArray[6]="六";

var now = year+"年"+month+"月"+date+"日"+"   星期"+dayArray[day];
$(".date").text(now);


var totalpage,pagesize,cpage,count,curcount,outstr; 
//初始化 
cpage = 1; 
totalpage = 0; 
pagesize = 12; 
outstr = ""; 


function setpage() 
{ 
    if(totalpage<=pagesize){        //总页数小于十页 
        for (count=1;count<=totalpage;count++) 
        {    if(count!=cpage)  
            { 
                outstr = outstr + "<a href='javascript:gotopage("+count+")' class='pageNumber' >"+"["+count+"]</a>";   //不是当前页则创一个连接 
            }else{ 
                outstr = outstr + "<span class='current' >"+"["+count+"]</span>";   //是当前页则为该数字
            } 
        } 
    } 
    if(totalpage>pagesize){        //总页数大于十页 
        if(parseInt((cpage-1)/pagesize) == 0)   
        {                                 //第1、11、21……页
            for (count=1;count<=pagesize;count++) 
            {    if(count!=cpage) 
                {                                        //不是当前页则创一个连接
                    outstr = outstr + "<a href='javascript:void(0)'class='pageNumber' onclick='gotopage("+count+")'>"+"["+count+"]</a>"; 
                }else{ 
                    outstr = outstr + "<span class='current'>"+"["+count+"]</span>"; 
                }                                       //是当前页则为该数字
            } 
            outstr = outstr + "<a href='javascript:void(0)'class='pageNumber' onclick='gotopage("+count+")'> 下翻 </a>"; 
        } 
        else if(parseInt((cpage-1)/pagesize) == parseInt(totalpage/pagesize)) // 最后第一轮
        {                                     
            outstr = outstr + "<a href='javascript:void(0)'class='pageNumber' onclick='gotopage("+(parseInt((cpage-1)/pagesize)*pagesize)+")'>上翻</a>"; 
            for (count=parseInt(totalpage/pagesize)*pagesize+1;count<=totalpage;count++) 
            {    if(count!=cpage) 
                { 
                    outstr = outstr + "<a href='javascript:void(0)'class='pageNumber' onclick='gotopage("+count+")'>["+count+"]</a>"; 
                }else{ 
                    outstr = outstr + "<span class='current'>"+"["+count+"]</span>"; 
                } 
            } 
        } 
        else 
        {     
            outstr = outstr + "<a href='javascript:void(0)' class='pageNumber'onclick='gotopage("+(parseInt((cpage-1)/pagesize)*pagesize)+")'>上翻</a>"; 
            for (count=parseInt((cpage-1)/pagesize)*pagesize+1;count<=parseInt((cpage-1)/pagesize)*pagesize+pagesize;count++) 
            {         
                if(count!=cpage) 
                { 
                    outstr = outstr + "<a href='javascript:void(0)'class='pageNumber' onclick='gotopage("+count+")'>["+count+"]</a>"; 
                }else{ 
                    outstr = outstr + "<span class='current'>"+"["+count+"]</span>"; 
                } 
            } 
            outstr = outstr + "<a href='javascript:void(0)'class='pageNumber' onclick='gotopage("+count+")'>下翻</a>"; 
        } 
    }     
    document.getElementById("page").innerHTML = "<div id='page'><span id='info'>共"+totalpage+"页|第"+cpage+"页  <\/span>" + outstr + "<\/div>"; 
    outstr = ""; 
} 



var xmlhttp;
function loadXMLDoc(url,cfunc) //创建ajax对象
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



