package com.ugarsoft.cryptoex.security;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.HttpStatus;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;

public class CustomLogoutSuccessHandler implements LogoutSuccessHandler {
	

    @Override
    public void onLogoutSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication)
          throws IOException, ServletException {
          System.out.println("=====session destroyed=======");
          response.setStatus(HttpStatus.OK.value());
         // response.sendRedirect(request.getContextPath() + "/admin-wv");
          }
        
   
}