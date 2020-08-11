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
    <spring:url value="/resources/vendor/select2/select2.min.css" var="select2Css"/>
    <spring:url value="/resources/vendor/datepicker/daterangepicker.css" var="datepickerCss"/>
    <spring:url value="/resources/vendor/mdi-font/css/material-design-iconic-font.min.css" var="iconicCss"/>
    <spring:url value="/resources/vendor/font-awesome-4.7/css/font-awesome.min.css" var="fontawesomeCss"/>
    <spring:url value="/resources/images/spring.png" var="favicon"/>

    <spring:url value="/resources/js/global.js" var="mainScript"/>
    <spring:url value="/resources/vendor/jquery/jquery.min.js" var="jQuery"/>
    <spring:url value="/resources/vendor/select2/select2.min.js" var="select2Js"/>
    <spring:url value="/resources/vendor/datepicker/moment.min.js" var="momentJs"/>
    <spring:url value="/resources/vendor/datepicker/daterangepicker.js" var="datepickerJs"/>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Spring MVC Student Application">
    <meta name="author" content="Renzo Bringino">

    <title>${title}</title>

    <link rel="icon" href="${favicon}" type="image/png" sizes="any">
    <link href="${mainCss}" rel="stylesheet"/>

    <!-- Icons font CSS-->
    <link href="${iconicCss}" rel="stylesheet" media="all">
    <link href="${fontawesomeCss}" rel="stylesheet" media="all">

    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="${select2Css}" rel="stylesheet" media="all">
    <link href="${datepickerCss}" rel="stylesheet" media="all">
</head>
<body>