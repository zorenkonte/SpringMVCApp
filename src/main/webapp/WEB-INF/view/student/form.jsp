<%--
  Created by IntelliJ IDEA.
  User: DarkMode
  Date: 03/08/2020
  Time: 8:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../../includes/header.jsp" %>
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
                    <form:input path="email" id="email" type="email"/>
                </div>
                <div>
                    <label for="password">Password</label>
                    <form:input path="password" id="password" type="password"/>
                </div>
                <div>
                    <label for="email-confirm">Repeat email</label>
                    <input id="email-confirm" type="email"/>
                    <form:errors cssClass="error-message" path="email"/>
                </div>
                <div>
                    <label for="password-confirm">Repeat password</label>
                    <input id="password-confirm" type="password"/>
                    <form:errors cssClass="error-message" path="password"/>
                </div>
            </div>
        </fieldset>
        <fieldset>
            <legend>
                <h3>Personal Details</h3>
            </legend>
            <div class="personal-details">
                <div>
                    <div><label for="student-id">Student ID</label>
                        <form:input path="studentId" id="student-id"/>
                    </div>
                    <form:errors cssClass="error-message" path="studentId"/>
                    <div><label for="first-name">First Name</label><form:input path="firstName" id="first-name"
                    /></div>
                    <form:errors cssClass="error-message" path="firstName"/>
                    <div><label for="last-name">Last Name</label><form:input path="lastName" id="last-name"
                    /></div>
                    <form:errors cssClass="error-message" path="lastName"/>
                    <div><label for="contact">Contact</label><form:input path="contact" id="contact"
                    /></div>
                    <form:errors cssClass="error-message" path="contact"/>
                    <div><label for="street">Street</label>
                        <form:input path="address.street" id="street"/>
                    </div>
                    <form:errors cssClass="error-message" path="address.street"/>
                    <div>
                        <label for="city">City</label>
                        <form:input path="address.city" id="city"/>
                    </div>
                    <form:errors cssClass="error-message" path="address.city"/>
                    <div>
                        <label>Course</label>
                        <form:select path="course.code" id="course">
                            <form:option value="" label="Select Course"/>
                            <c:forEach items="${courses}" var="item">
                                <form:option value="${item.key}" label="${item.value.name}"/>
                            </c:forEach>
                        </form:select>
                    </div>
                    <form:errors cssClass="error-message" path="course.code"/>
                </div>
                <div>
                    <div>
                        <label>Gender</label>
                        <div class="gender">
                            <form:radiobutton path="gender" id="male" value="male"/>
                            <label for="male" class="radio">Male</label>
                            <form:radiobutton path="gender" id="female" value="female"/>
                            <label for="female" class="radio">Female</label>
                        </div>
                    </div>
                    <form:errors cssClass="error-message" path="gender"/>
                    <div class="birthdate">
                        <label for="birth-date">Birthdate</label>
                        <form:input path="birthDate" id="birth-date" type="date"/>
                    </div>
                    <form:errors cssClass="error-message" path="birthDate"/>
                    <div>
                        <label>Languages</label>
                        <div class="language">
                            <form:checkboxes path="languages" items="${languageOptions}"/>
                        </div>
                    </div>
                    <form:errors cssClass="error-message" path="languages"/>
                </div>
            </div>
        </fieldset>
        <fieldset>
            <legend>
                <h3>Terms and Mailing</h3>
            </legend>
            <div class="terms-mailing">
                <div class="checkbox">
                    <input type="checkbox">
                    <span>I accept the <a href="#">Privacy Policy.</a></span>
                </div>
                <div class="checkbox">
                    <input type="checkbox">
                    <span>I want to receive personalized offers by your site</span>
                </div>
            </div>
        </fieldset>
        <button type="submit">Submit</button>
    </form:form>
</div>
<%@ include file="../../includes/footer.jsp" %>
<script defer src="${mainScript}"></script>

