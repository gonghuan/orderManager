package edu.seu.cs.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.seu.cs.model.User;

public class LoginFilter implements Filter{
	FilterConfig config;
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest request = (HttpServletRequest)arg0;
		HttpServletResponse response = (HttpServletResponse)arg1;
		FilterChain chain = arg2;
		String context = request.getContextPath();
		String url = request.getRequestURI();
		String[] patterns = config.getInitParameter("passPattern").split(";");
		boolean isStaticResource = false;
		for(String pattern : patterns){
			if(url.indexOf(pattern) >= 0){
				isStaticResource = true;
				break;
			}
		}
		if(isStaticResource){
			chain.doFilter(request, response);
		}else{
			if(url.equals(context+"/login")){
				chain.doFilter(request, response);
			}else{
				if(request.getSession().getAttribute("user") == null){
					response.sendRedirect(context + "/login");
				}else{
					chain.doFilter(request, response);
				}
			}
		}
		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		config = arg0;
	}

}
