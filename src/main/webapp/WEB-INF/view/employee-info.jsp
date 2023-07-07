<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: jeraldin
  Date: 7/6/23
  Time: 2:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EMPLOYEE INFO</title>
</head>
<body>

<form:form action="saveEmployee" modelAttribute="employee">

    <form:hidden path="id"/>
    NAME <form:input path="name"/>
    <br><br>
    SURNAME <form:input path="surname"/>
    <br><br>
    DEPARTMENT <form:input path="department"/>
    <br><br>
    SALARY <form:input path="salary"/>
    <br><br>
    <input type="submit" value="SUBMIT"/>
</form:form>
</body>
</html>
