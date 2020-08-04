<%--
  Created by IntelliJ IDEA.
  User: DarkMode
  Date: 03/08/2020
  Time: 8:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <spring:url value="/resources/css/main.css" var="mainCss"/>
    <spring:url value="/resources/images/spring.png" var="favicon"/>

    <title>Student Form</title>

    <link rel="icon" href="${favicon}" type="image/png" sizes="any">
    <link href="${mainCss}" rel="stylesheet"/>
</head>
<body>
<div class="main-block">
    <form:form action="processForm" modelAttribute="student" method="GET">
        <h1>Create a free account</h1>
        <fieldset>
            <legend>
                <h3>Account Details</h3>
            </legend>
            <div class="account-details">
                <div><label>Email</label><input type="text" name="name"></div>
                <div><label>Password</label><input type="password" name="name"></div>
                <div><label>Repeat email</label><input type="text" name="name"></div>
                <div><label>Repeat password</label><input type="password" name="name"></div>
            </div>
        </fieldset>
        <fieldset>
            <legend>
                <h3>Personal Details</h3>
            </legend>
            <div class="personal-details">
                <div>
                    <div><label for="student-id">Student ID</label><form:input path="studentId" id="student-id"/></div>
                    <div><label for="first-name">First Name</label><form:input path="firstName" id="first-name"/></div>
                    <div><label for="last-name">Last Name</label><form:input path="lastName" id="last-name"/></div>
                    <div><label>Phone</label><input type="text" name="name"></div>
                    <div><label>Address</label><input type="text" name="name"></div>
                    <div><label>City</label><input type="text" name="name"></div>
                    <div>
                        <label>Course</label>
                        <form:select path="course.code" id="course">
                            <c:forEach items="${courses}" var="item">
                                <form:option value="${item.key}" label="${item.value.name}"/>
                            </c:forEach>
                        </form:select>
                    </div>
                </div>
                <div>
                    <div>
                        <label>Gender</label>
                        <div class="gender">
                            <input type="radio" value="none" id="male" name="gender"/>
                            <label for="male" class="radio">Male</label>
                            <input type="radio" value="none" id="female" name="gender"/>
                            <label for="female" class="radio">Female</label>
                        </div>
                    </div>
                    <div class="birthdate">
                        <label for="birth-date">Birthdate</label>
                        <form:input path="birthDate" id="birth-date" type="date"/>
                    </div>
                </div>
            </div>
        </fieldset>
        <fieldset>
            <legend>
                <h3>Terms and Mailing</h3>
            </legend>
            <div class="terms-mailing">
                <div class="checkbox">
                    <input type="checkbox" name="checkbox"><span>I accept the <a
                        href="#">Privacy Policy.</a></span>
                </div>
                <div class="checkbox">
                    <input type="checkbox"
                           name="checkbox"><span>I want to recelve personallzed offers by your site</span>
                </div>
        </fieldset>
        <button type="submit">Submit</button>
    </form:form>
</div>
</body>
</html>
