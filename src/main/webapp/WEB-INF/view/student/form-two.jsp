<%--
  Created by IntelliJ IDEA.
  User: DarkMode
  Date: 09/08/2020
  Time: 10:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../../includes/header.jsp" %>
<div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
    <div class="wrapper wrapper--w680">
        <div class="card card-4">
            <div class="card-body">
                <h2 class="title">Account Details</h2>
                <form:form action="processForm" modelAttribute="student" method="POST">
                    <div class="row row-space">
                        <div class="col-2">
                            <div class="input-group">
                                <label for="email" class="label">email <form:errors path="student.email"
                                                                                    cssClass="error-message"/></label>
                                <form:input path="student.email" id="email" type="email" cssClass="input--style-4"/>
                            </div>
                        </div>
                        <div class="col-2">
                            <div class="input-group">
                                <label for="email-confirm" class="label">confirm email</label>
                                <input id="email-confirm" type="email" class="input--style-4"/>
                            </div>
                        </div>
                    </div>
                    <div class="row row-space">
                        <div class="col-2">
                            <div class="input-group">
                                <label for="password" class="label">password
                                    <form:errors path="student.password" cssClass="error-message"/>
                                </label>
                                <form:password path="student.password" id="password" cssClass="input--style-4"/>
                            </div>
                        </div>
                        <div class="col-2">
                            <div class="input-group">
                                <label for="password-confirm" class="label">confirm password</label>
                                <input id="password-confirm" type="password" class="input--style-4"/>
                            </div>
                        </div>
                    </div>
                    <h2 class="title">Personal Details</h2>
                    <div class="row row-space">
                        <div class="col-2">
                            <div class="input-group">
                                <label for="student-id" class="label">Student ID <form:errors path="student.studentId"
                                                                                              cssClass="error-message"/></label>
                                <form:input path="student.studentId" id="student-id" cssClass="input--style-4"/>
                            </div>
                        </div>
                        <div class="col-2">
                            <div class="input-group">
                                <label class="label">Gender <form:errors path="student.gender"
                                                                         cssClass="error-message"/></label>
                                <div class="p-t-10">
                                    <label for="male" class="radio-container m-r-45">Male
                                        <form:radiobutton path="student.gender" id="male" value="male"/>
                                        <span class="checkmark checkmark-radio"></span>
                                    </label>
                                    <label for="female" class="radio-container">Female
                                        <form:radiobutton path="student.gender" id="female" value="female"/>
                                        <span class="checkmark checkmark-radio"></span>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row row-space">
                        <div class="col-2">
                            <div class="input-group">
                                <label for="first-name" class="label">first name <form:errors path="student.firstName"
                                                                                              cssClass="error-message"/></label>
                                <form:input path="student.firstName" id="first-name" type="text"
                                            cssClass="input--style-4"/>
                            </div>
                        </div>
                        <div class="col-2">
                            <div class="input-group">
                                <label for="last-name" class="label">last name <form:errors path="student.lastName"
                                                                                            cssClass="error-message"/></label>
                                <form:input path="student.lastName" id="last-name" type="text"
                                            cssClass="input--style-4"/>
                            </div>
                        </div>
                    </div>
                    <div class="row row-space">
                        <div class="col-2">
                            <div class="input-group">
                                <label for="street" class="label">street <form:errors path="student.address.street"
                                                                                      cssClass="error-message"/></label>
                                <form:input path="student.address.street" id="street" type="text"
                                            cssClass="input--style-4"/>
                            </div>
                        </div>
                        <div class="col-2">
                            <div class="input-group">
                                <label for="city" class="label">city <form:errors path="student.address.city"
                                                                                  cssClass="error-message"/></label>
                                <form:input path="student.address.city" id="city" type="text"
                                            cssClass="input--style-4"/>
                            </div>
                        </div>
                    </div>
                    <div class="row row-space">
                        <div class="col-2">
                            <div class="input-group">
                                <label for="birth-date" class="label">Birthday <form:errors path="student.birthDate"
                                                                                            cssClass="error-message"/></label>
                                <div class="input-group-icon">
                                    <form:input path="student.birthDate" id="birth-date" type="text"
                                                cssClass="input--style-4 js-datepicker" readonly="true"/>
                                    <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                </div>
                            </div>
                        </div>
                        <div class="col-2">
                            <div class="input-group">
                                <label for="contact" class="label">Contact # <form:errors path="student.contact"
                                                                                          cssClass="error-message"/></label>
                                <form:input path="student.contact" id="contact" type="text" cssClass="input--style-4"/>
                            </div>
                        </div>
                    </div>
                    <div class="input-group">
                        <label class="label">Languages <form:errors path="student.languages"
                                                                    cssClass="error-message"/></label>
                        <div class="p-t-10">
                            <c:forEach items="${languageOptions}" var="item">
                                <label for="id${item.key}" class="radio-container checkbox-container m-r-45">
                                    <form:checkbox path="student.languages" value="${item.key}" id="id${item.key}"
                                                   label="${item.value}"/>
                                    <span class="checkmark"></span>
                                </label>
                            </c:forEach>
                        </div>
                    </div>
                    <div class="input-group">
                        <label class="label">Course <form:errors path="student.course.code"
                                                                 cssClass="error-message"/></label>
                        <div class="rs-select2 js-select-simple select--no-search">
                            <form:select path="student.course.code" id="course">
                                <form:option value="" selected="selected" label="Select Course"/>
                                <c:forEach items="${courses}" var="item">
                                    <form:option value="${item.key}" label="${item.value.name}"/>
                                </c:forEach>
                            </form:select>
                            <div class="select-dropdown"></div>
                        </div>
                    </div>
                    <div class="p-t-15">
                        <button class="btn btn--radius-2 btn--blue" type="submit">Submit</button>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>
<script src="${jQuery}"></script>
<script src="${select2Js}"></script>
<script src="${momentJs}"></script>
<script src="${datepickerJs}"></script>
<script src="${mainScript}"></script>

