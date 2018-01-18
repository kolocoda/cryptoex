<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" ng-app="app" class="no-js">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
<%
	String path = request.getContextPath();
%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><%=request.getAttribute("title") == null ? 
"Ogwugo::" : request.getAttribute("title")%></title>
	<%@page import="org.springframework.context.support.AbstractApplicationContext"%>	
	
	
	 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
     <link href="//fonts.googleapis.com/css?family=Dosis:200,300,400,500,600"
	 rel="stylesheet">
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
	 <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">
     <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">

   
	<link href="${pageContext.request.contextPath}/resources/icons/font-awesome/css/font-awesome.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/icons/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/icons/weather-icons/css/weather-icons.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/icons/linea-icons/linea.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/icons/themify-icons/themify-icons.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/icons/flag-icon-css/flag-icon.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/icons/material-design-iconic-font/css/materialdesignicons.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/style/spinners.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/style/animate.css" rel="stylesheet">
    <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/images/favicon.png"> 
    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/resources/style/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/resources/style/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/style/sweetalert.css" rel="stylesheet">
    <!-- You can change the theme colors from here -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/style/bootstrap-wysihtml5.css" />
    <link href="${pageContext.request.contextPath}/resources/style/blue.css" id="theme" rel="stylesheet">

   <%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/style/base.css">
   <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/style/theme1.css"> --%>

</head>