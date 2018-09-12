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
    <title>Lines</title>
</head>
<body>
<jsp:include page="/WEB-INF/fragments/header.jsp"/>

<h2>Lines</h2>

<form action="/lines/add" method="get">
    <button>New line</button>
</form>

<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Number</th>
        <th>Variant</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="line" items="${lines}">
        <tr>
            <td><c:out value="${line.id}"/></td>
            <td><c:out value="${line.number}"/></td>
            <td><c:out value="${line.variant}"/></td>
            <td>
                <a href="/lines/details/<c:out value="${line.id}"/>">Details</a>
                <a href="/lines/edit/<c:out value="${line.id}"/>">Edit</a>
                <a href="/lines/del/<c:out value="${line.id}"/>">Delete</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>


<jsp:include page="/WEB-INF/fragments/footer.jsp"/>
</body>
</html>
