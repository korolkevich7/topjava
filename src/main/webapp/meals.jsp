<%--
  Created by IntelliJ IDEA.
  User: Глеб Королькевич
  Date: 11.05.2020
  Time: 15:18
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@ taglib prefix="javatime" uri="http://jakarta.apache.org/taglibs/standard/permittedTaglibs" %>--%>
<%--<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.time.format.DateTimeFormatter" %>


<html>
    <head>
        <title>Meals</title>
    </head>

    <body>
        <h3><a href="index.html">Home</a></h3>
        <hr>
        <h2>Meals</h2>

        <table>
            <thead>
            <tr>
                <th>dateTime</th>
                <th>description</th>
                <th>calories</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="meal" items="${requestScope.listMeal}" >
                <tr style="background-color:${meal.excess ? 'red' : 'greenyellow'}">
                    <td><c:out value="${meal.dateTime.format(DateTimeFormatter.ofPattern('dd.MM.yyyy HH:mm'))}"/></td>
                    <td><c:out value="${meal.description}"/></td>
                    <td><c:out value="${meal.calories}"/></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
