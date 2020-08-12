<%--
  Created by IntelliJ IDEA.
  User: DarkMode
  Date: 03/08/2020
  Time: 9:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../../includes/header.jsp" %>
<div class="main-block">
    <form>
        <h1>${student.student.id}</h1>
        <fieldset>
            <legend>
                <h3>Account Details</h3>
            </legend>
            <div class="account-details">
                <div>
                    <label class="info-title" for="email">Email:</label>
                    <p id="email">${student.student.email}</p>
                </div>
                <div>
                    <label class="info-title" for="password">Password:</label>
                    <p id="password">${"*".repeat(student.student.password.length())}</p>
                </div>
            </div>
        </fieldset>
        <fieldset>
            <legend>
                <h3>Personal Details</h3>
            </legend>
            <div class="personal-details">
                <div>
                    <div>
                        <label class="info-title" for="student-id">Student ID:</label>
                        <p id="student-id">${student.student.studentId}</p>
                    </div>
                    <div>
                        <label class="info-title" for="first-name">First Name:</label>
                        <p id="first-name">${student.student.firstName}</p>
                    </div>
                    <div>
                        <label class="info-title" for="last-name">Last Name:</label>
                        <p id="last-name">${student.student.lastName}</p>
                    </div>
                    <div>
                        <label class="info-title" for="contact">Contact:</label>
                        <p id="contact">${student.student.contact}</p>
                    </div>
                    <div>
                        <label class="info-title" for="street">Street:</label>
                        <p id="street">${student.student.address.street}</p>
                    </div>
                    <div>
                        <label class="info-title" for="city">City:</label>
                        <p id="city">${student.student.address.city}</p>
                    </div>
                    <div>
                        <label class="info-title" for="course">Course:</label>
                        <p id="course">${student.student.course.code} : ${student.student.course.name}</p>
                    </div>
                </div>
                <div>
                    <div>
                        <label class="info-title" for="gender">Gender</label>
                        <p id="gender">${student.student.gender}</p>
                    </div>
                    <div class="birthdate">
                        <label class="info-title" for="birth-date">Birthdate</label>
                        <p id="birth-date"><fmt:formatDate value="${student.student.birthDate}" pattern="yyyy-MM-dd"/></p>
                    </div>
                    <div>
                        <label class="info-title" for="languages">Languages</label>
                        <ul id="languages">
                            <c:forEach var="languageKey" items="${student.student.languages}">
                                <li>${languageOptions.get(languageKey)}</li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
        </fieldset>
    </form>
</div>
<%@ include file="../../includes/footer.jsp" %>



