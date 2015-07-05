package net.gslab.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.sql.Timestamp;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.gslab.entity.News;
import net.gslab.entity.User;
import net.gslab.service.NewsService;
import net.gslab.setting.CommonConstant;
import net.gslab.setting.Page;

import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller(value="newsController")
@RequestMapping("/view")
public class NewsController extends BaseController{

	@Resource(name="newsServiceImpl")
	private NewsService newsService;
	
	//github测试，2015年7月3日21:51:36
	//github测试2，2015年7月3日22:17:13
	//github测试3，2015年7月3日22:38:42
	
	//添加新闻
	@RequestMapping("/add")
	public void addNews(){
		System.out.println("in the NewsController");
		News news = new News();
		Date date = new Date();//date.toString()输出格林威治时间
		System.out.println(date);
		String strDate = new SimpleDateFormat("yyyy-MM-dd").format(date);
		System.out.println(strDate);
		//news.setNewsId(1);
		news.setContent("first news test");
		news.setPublishDate(strDate);
		news.setPublishName("关振宇");
		//该外键不存在会报错：Cannot add or update a child row: a foreign key constraint fails (`model`.`t_news`, CONSTRAINT `newsPublisher` FOREIGN KEY (`publishName`) REFERENCES `t_user` (`userName`))
		
		newsService.save(news);
	}
	
	//从后台添加新闻
	@RequestMapping(value="/addNews",method=RequestMethod.POST)
	public String addNews2(String newsName,String publishName,String content)
	{
		News news=new News();
		//进行格式判断,先判断是否为空
		if(newsName.isEmpty()||publishName.isEmpty()||content.isEmpty())
		{
			//System.out.print("发布新闻失败，新闻标题、新闻内容和发布者姓名不能为空！");
			return "发布新闻失败，新闻标题、新闻内容和发布者姓名不能为空！";
		}
		
		// ? 应该进行判断:member中是否存在名字是publishName的人，但是这里暂时没写;  
		
		//获取当前时间
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		String time=df.format(new Date()).toString();
		System.out.print("发布此新闻的时间："+time);	
		
		//给News赋值
		news.setContent(content);
		news.setNewsName(newsName);
		news.setPublishName(publishName);
		news.setPublishDate(time);
		
		//获取当前新闻的总数目，加1后，给news.NewsId赋值,然后发布新闻
		if(news!=null)
		{
			int id= newsService.listNews().size()+1;
			news.setNewsId(id);
			newsService.save(news);
			//System.out.print("新闻发布成功！");	
			return "新闻发布成功！";
		}
		//System.out.print("新闻发布失败！");
		return "新闻发布失败";
	}
	
	//分页例子，
       @RequestMapping(value = "/getPage", method = RequestMethod.GET)
	   public @ResponseBody List<News>  list(HttpServletRequest request,
			HttpServletResponse response,@RequestParam(value="pageIndex")Integer pageIndex) {
		/**
		 * @param pageIndex   请求的页码
         * @param pageSize   每页的记录条数
         * @param 
		 */
		//return newsService.getPage(pageIndex);  //使用默认的pageSize
    	Page page=newsService.getPage("from News n order by n.publishDate desc",pageIndex,12);  //自定义pageSize为2 
    	List<News> data=page.getData();
    	for(int i=0;i<data.size();i++)
		{
			News temp=data.get(i);
			temp.setContent(null);
		}		
		 List list_temp=page.getData();
		 list_temp.add(page.getTotalCount());
		 return  list_temp;
		//return newsService.getPage("from News e where e.newsName='me'",pageIndex); // 使用默认的pageSize
		//return newsService.getPage("from News e where e.newsName='me'",pageIndex,1);//自定义pageSize为1
	}
       
        //分页2，返回分页，附带新闻总数，已测试，可以使用；
        //参数pageIndex指定是第几页
       @RequestMapping(value = "/getPage_2", method = RequestMethod.GET)
       public @ResponseBody Page<News> list2(HttpServletRequest request,
   			HttpServletResponse response,@RequestParam(value="pageIndex")Integer pageIndex)
   			{
    	   /**
   		 * @param pageIndex   请求的页码
            * @param pageSize   每页的记录条数
            * @param 
   		 */
    	   Page page=newsService.getPage("from News n order by n.publishDate desc",pageIndex,12);  //自定义pageSize为2
    	   
    	   return page;
   			}
       
       //返回totalsize，即数据库里面的新闻总数,已测试，可以使用
       @RequestMapping(value = "/getTotalcount", method = RequestMethod.GET)
       public @ResponseBody  long getTotalcount()
       {
    	   return  newsService.getPage(1).getTotalCount();
    	   
    	   
       }
       
     //分页，返回首页显示的9条最新新闻
       @RequestMapping(value = "/get9Page", method = RequestMethod.GET)
	   public @ResponseBody List<News>  list2(HttpServletRequest request,
			HttpServletResponse response) {
    	   //,@RequestParam(value="pageIndex")Integer pageIndex
		/**
		 * 
		 * @param pageIndex   请求的页码
         * @param pageSize   每页的记录条数
         * @param 
		 */
    	Page page=newsService.getPage("from News n order by n.publishDate desc",1,9); 	//按日期排序	
		List<News> data=page.getData();
		
		//把不用的属性设置为null(主要是content，其余占用的空间小，减少占用的带宽)
		for(int i=0;i<data.size();i++)
		{
			News temp=data.get(i);
			temp.setContent(null);
		}		
		return page.getData();
		
	}
       
    //删除新闻,前台传入ID，根据ID删除新闻，删除后，检验是否删除成功
   	@RequestMapping("/deleteByID")
   	public void delNews(int id){
   		System.out.println("in the NewsController");
   		//News news = new News();  		
   		newsService.delete(id) ;
   	}
   	
  //返回全部新闻 ，返回json串，这就是一个测试
   	@RequestMapping(value="/newsList") 
	public  @ResponseBody List<News> show(Model model)  //后台往前台传输数据时用model
	{
		List<News> news=newsService.listNews();
		model.addAttribute("news",news);   //等效于request和respond
		return news;
	}

	//根据新闻id，获得数据库中的新闻
	@RequestMapping(value ="/getByID",method = RequestMethod.GET)
	public @ResponseBody News getByID(HttpServletRequest request,
			HttpServletResponse response,@RequestParam(value="id")Integer id)//id是指新闻id，
	{
		System.out.println(id);
		return newsService.getByID(id);
	}
	
}
