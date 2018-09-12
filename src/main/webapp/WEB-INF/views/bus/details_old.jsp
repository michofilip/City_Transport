<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: michal
  Date: 08.09.18
  Time: 15:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Bus details</title>
</head>
<body>
<jsp:include page="/WEB-INF/fragments/header.jsp"/>

<table>
    <tbody>
    <tr>
        <td>ID</td>
        <td><c:out value="${bus.id}"/></td>
    </tr>
    <tr>
        <td>Plate number</td>
        <td><c:out value="${bus.plateNumber}"/></td>
    </tr>
    </tbody>
</table>

<a href="/buses/edit/<c:out value="${bus.id}"/>">Edit</a>
<a href="/buses/del/<c:out value="${bus.id}"/>">Delete</a>

<jsp:include page="/WEB-INF/fragments/footer.jsp"/>
</body>
</html>
