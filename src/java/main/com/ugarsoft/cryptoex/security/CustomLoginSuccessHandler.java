package com.ugarsoft.cryptoex.security;


import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import com.ugarsoft.cryptoex.buisnesslogic.UserLogic;


public class CustomLoginSuccessHandler implements AuthenticationSuccessHandler {

   @Autowired
  UserLogic userLogic;

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException {
      
         response.setStatus(HttpStatus.OK.value());
    	 response.getWriter().print(1);
      	 }
      
}