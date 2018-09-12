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
    <title>Busstops</title>
</head>
<body>
<jsp:include page="/WEB-INF/fragments/header.jsp"/>

<h2>Busstops</h2>

<form action="/busstops/add" method="get">
    <button>New busstop</button>
</form>

<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="busstop" items="${busstops}">
        <tr>
            <td><c:out value="${busstop.id}"/></td>
            <td><c:out value="${busstop.name}"/></td>
            <td>
                <a href="/busstops/details/<c:out value="${busstop.id}"/>">Details</a>
                <a href="/busstops/edit/<c:out value="${busstop.id}"/>">Edit</a>
                <a href="/busstops/del/<c:out value="${busstop.id}"/>">Delete</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>


<jsp:include page="/WEB-INF/fragments/footer.jsp"/>
</body>
</html>
