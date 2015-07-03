package net.gslab.setting;


	
	/**
	 *整个应用通用的常量
	 *<br><b>类描述:</b>
	 *<pre>|</pre>
	 *@see
	 *@since
	 */
	public class CommonConstant
	{
	 
	   /**
	    * 用户对象放到Session中的键名称
	    */
	   public static final String USER_CONTEXT = "USER_CONTEXT";
	    
	   /**
	    * 将登录前的URL放到Session中的键名称
	    */
	   public static final String LOGIN_TO_URL = "toUrl";
	    
	   /**
	    * 每页的记录数，分页用的，过滤器中，一般用不上
	    */
	   public static final int BOARD=0,NEWS=1,POST=2,TOPIC=3,USER=4;
	   public static final int []PAGE_SIZE={3,3,3,3,3};
	   public static final String[] TABLE={"Board","News","Post","Topic","User"};
	   public static int getTable(String className)
	   {
		   for(int i=0;i<TABLE.length;i++)
			   if(TABLE[i].equals(className)) return i;
		   return -1;
	   }
	
	 
	}


