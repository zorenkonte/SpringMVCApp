<%--
  Created by IntelliJ IDEA.
  User: DarkMode
  Date: 06/08/2020
  Time: 9:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <spring:url value="/resources/css/main.css" var="mainCss"/>
    <spring:url value="/resources/js/script.js" var="mainScript"/>
    <spring:url value="/resources/images/spring.png" var="favicon"/>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Spring MVC Student Application">
    <meta name="author" content="Renzo Bringino">

    <title>${title}</title>

    <link rel="icon" href="${favicon}" type="image/png" sizes="any">
    <link href="${mainCss}" rel="stylesheet"/>
</head>
<body>