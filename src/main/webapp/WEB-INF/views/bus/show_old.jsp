<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: michal
  Date: 08.09.18
  Time: 15:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Buses</title>
</head>
<body>
<jsp:include page="/WEB-INF/fragments/header.jsp"/>

<h2>Buses</h2>

<form action="/buses/add" method="get">
    <button>New bus</button>
</form>

<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Plate number</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="bus" items="${buses}">
        <tr>
            <td><c:out value="${bus.id}"/></td>
            <td><c:out value="${bus.plateNumber}"/></td>
            <td>
                <a href="/buses/details/<c:out value="${bus.id}"/>">Details</a>
                <a href="/buses/edit/<c:out value="${bus.id}"/>">Edit</a>
                <a href="/buses/del/<c:out value="${bus.id}"/>">Delete</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>


<jsp:include page="/WEB-INF/fragments/footer.jsp"/>
</body>
</html>
