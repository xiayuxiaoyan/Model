package net.gslab.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.springframework.util.StringUtils;

import net.gslab.entity.User;
import net.gslab.setting.CommonConstant;

public class LoginFilter implements Filter {

	private static final String FILTERED_REQUEST = "@@session_context_filtered_request";
	private static final String[] INHERENT_ESCAPE_URIS = { "/view/index.jsp",
			"/view/register.jsp","/view/login.jsp","/index.jsp","/view/infoSubmit","/view/home.jsp","/view/about.html" };

	/**
	 * Default constructor.
	 */
	public LoginFilter() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		if(request==null||response==null){
			System.out.println("null request ot response in the doFilter");
		}
		//System.out.println("进入登录验证过滤器：");
		if (request != null && request.getAttribute(FILTERED_REQUEST) != null) {
			// 如果没发送请求或者不是第一次访问过滤器，直接通过
			//System.out.println("直接通过过滤器");
			chain.doFilter(request, response);
		} else {
			//System.out.println("首次进入过滤器");
			// 置位不再经过过滤器
			request.setAttribute(FILTERED_REQUEST, Boolean.TRUE);
			HttpServletRequest httpRequest = (HttpServletRequest) request;
			User userContext = this.getSessionUser(httpRequest);
			System.out.println("userContext:"+userContext);
			// 用户为空且未登录
			if (userContext == null && !isURILogin(httpRequest.getRequestURI(), httpRequest)) {
				// 拿到url
				String toUrl = httpRequest.getRequestURL().toString();
				//System.out.println("被过滤掉：用户未登录且访问了未授权页面");
				// 拿到请求
				if (!StringUtils.isEmpty(httpRequest.getQueryString()))
					toUrl += "?" + httpRequest.getQueryString();
				System.out.println("toUrl" + toUrl);
				// 把想要访问的界面存到LOGIN_TO_URL里，转到登陆界面，一旦登陆成功就去那个页面
				httpRequest.getSession().setAttribute(
						CommonConstant.LOGIN_TO_URL, toUrl);
				request.getRequestDispatcher("/view/login.jsp").forward(
						request, response);
				//System.out.println("要return了啊========");
				return;

			}
			else{
				//System.out.println("最后一个else===========");
				chain.doFilter(request, response);
				}
			
		}
	}

	private boolean isURILogin(String requestURI, HttpServletRequest httpRequest) {
		// TODO Auto-generated method stub
		if (httpRequest.getContextPath().equalsIgnoreCase(requestURI)
				|| (httpRequest.getContextPath() + "/")
						.equalsIgnoreCase(requestURI))
			return true;
		for (String uri : INHERENT_ESCAPE_URIS) {
			if (requestURI != null && requestURI.indexOf(uri) >= 0) {
				return true;
			}
		}
		return false;
	}

	private User getSessionUser(HttpServletRequest httpRequest) {
		// TODO Auto-generated method stub
		User user = (User) httpRequest.getSession().getAttribute(
				CommonConstant.USER_CONTEXT);
		if (user == null)
			System.out.println("null user in the loginFilter");
		return user;
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
