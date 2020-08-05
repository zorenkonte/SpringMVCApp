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
    <spring:url value="/resources/js/script.js" var="mainScript"/>
    <spring:url value="/resources/images/spring.png" var="favicon"/>

    <title>Student Form</title>

    <link rel="icon" href="${favicon}" type="image/png" sizes="any">
    <link href="${mainCss}" rel="stylesheet"/>
</head>
<body>
<div class="main-block">
    <form:form action="processForm" modelAttribute="student" method="POST">
        <h1>Create a free account</h1>
        <fieldset>
            <legend>
                <h3>Account Details</h3>
            </legend>
            <div class="account-details">
                <div>
                    <label for="email">Email</label>
                    <form:input path="email" id="email" type="email" required="required"/>
                </div>
                <div>
                    <label for="password">Password</label>
                    <form:input path="password" id="password" type="password" required="required"/>
                </div>
                <div>
                    <label for="email-confirm">Repeat email</label>
                    <input id="email-confirm" type="email" required/>
                </div>
                <div>
                    <label for="password-confirm">Repeat password</label>
                    <input id="password-confirm" type="password" required/>
                </div>
            </div>
        </fieldset>
        <fieldset>
            <legend>
                <h3>Personal Details</h3>
            </legend>
            <div class="personal-details">
                <div>
                    <div><label for="student-id">Student ID</label><form:input path="studentId" id="student-id"
                                                                               required="required"/></div>
                    <div><label for="first-name">First Name</label><form:input path="firstName" id="first-name"
                                                                               required="required"/></div>
                    <div><label for="last-name">Last Name</label><form:input path="lastName" id="last-name"
                                                                             required="required"/></div>
                    <div><label for="contact">Contact</label><form:input path="contact" id="contact"
                                                                         required="required"/></div>
                    <div><label for="street">Street</label><form:input path="address.street" id="street"
                                                                       required="required"/></div>
                    <div><label for="city">City</label><form:input path="address.city" id="city" required="required"/>
                    </div>
                    <div>
                        <label>Course</label>
                        <form:select path="course.code" id="course" required="required">
                            <form:option value="" label="Select Course"/>
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
                            <form:radiobutton path="gender" id="male" value="male" required="required"/>
                            <label for="male" class="radio">Male</label>
                            <form:radiobutton path="gender" id="female" value="female"/>
                            <label for="female" class="radio">Female</label>
                        </div>
                    </div>
                    <div class="birthdate">
                        <label for="birth-date">Birthdate</label>
                        <form:input path="birthDate" id="birth-date" type="date" required="required"/>
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
                    <input type="checkbox" required>
                    <span>I accept the <a href="#">Privacy Policy.</a></span>
                </div>
                <div class="checkbox">
                    <input type="checkbox">
                    <span>I want to receive personalized offers by your site</span>
                </div>
        </fieldset>
        <button type="submit">Submit</button>
    </form:form>
</div>
</body>
</html>
<script defer src="${mainScript}"></script>
