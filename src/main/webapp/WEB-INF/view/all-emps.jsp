<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jeraldin
  Date: 7/6/23
  Time: 11:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ALL EMPLOYEES</title>
</head>
<body>
    <table>
        <tr>
            <th>Name</th>
            <th>Surname</th>
            <th>Department</th>
            <th>Salary</th>
            <th>Options</th>
        </tr>
        <c:forEach var="emp" items="${emps}">

            <c:url var="updateUrl" value="/updateEmployee">
                <c:param name="empId" value="${emp.id}"/>
            </c:url>

            <tr>
                <td>${emp.name}</td>
                <td>${emp.surname}</td>
                <td>${emp.department}</td>
                <td>${emp.salary}</td>
                <td>
                    <input type="button" value="UPDATE" onclick="window.location.href='${updateUrl}'">
                </td>
            </tr>
        </c:forEach>
    </table>
    <br><br>
    <input type="button" value="ADD" onclick="window.location.href='addEmployee'">
</body>
</html>
