<%--
  Created by IntelliJ IDEA.
  User: DarkMode
  Date: 03/08/2020
  Time: 9:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <spring:url value="/resources/css/main.css" var="mainCss" />
    <spring:url value="/resources/images/spring.png" var="favicon" />

    <title>${student.firstName} ${student.lastName}</title>

    <link rel="icon" href="${favicon}" type="image/png" sizes="any">
    <link href="${mainCss}" rel="stylesheet" />
</head>
<body>
    <h1>Student Info</h1>
    <p>${student.id}</p>
    <p>${student.studentId}</p>
    <p>${student.firstName}</p>
    <p>${student.lastName}</p>
    <p><fmt:formatDate value="${student.birthDate}" pattern="yyyy-MM-dd" /></p>
    <p>${student.course.code} : ${student.course.name}</p>
</body>
</html>
