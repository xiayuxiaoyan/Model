package net.gslab.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import net.gslab.entity.SystemContext;

public class SystemContextFilter implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse reps,
			FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		int offSet = 0;
		try {
			//offSet = Integer.parseInt(req.getParameter("pager.offset"));
			SystemContext.setOffSet(0);//有待修改
			SystemContext.setSize(15);
			chain.doFilter(req,reps);
		} finally {
			SystemContext.removeOffSet();
			SystemContext.removeSize();
		}

	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
