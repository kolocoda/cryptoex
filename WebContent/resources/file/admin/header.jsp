<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" ng-app="app" class="no-js">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title><%=request.getAttribute("title") == null ? 
"CryptoExchange" : request.getAttribute("title")%></title>

	<!-- Global stylesheets -->
	<link href="https://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/resources/assets/css/icons/icomoon/styles.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/resources/assets/css/core.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/resources/assets/css/components.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/resources/assets/css/colors.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/izitoast/iziToast.min.css">
	<!-- /global stylesheets -->

	<!-- Core JS files -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/plugins/loaders/pace.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/core/libraries/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/core/libraries/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/plugins/loaders/blockui.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/izitoast/iziToast.min.js" ></script>
	<!-- /core JS files -->


	<!-- Theme JS files -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/core/app.js"></script>
	<!-- /theme JS files -->

</head>