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
    <title>Route details</title>
</head>
<body>
<jsp:include page="/WEB-INF/fragments/header.jsp"/>

<table>
    <tbody>
    <tr>
        <td>ID</td>
        <td><c:out value="${route.id}"/></td>
    </tr>
    <tr>
        <td>Line</td>
        <td><c:out value="${route.line.numberVariant}"/></td>
    </tr>
    <tr>
        <td>Order No</td>
        <td><c:out value="${route.orderNoInt}"/></td>
    </tr>
    <tr>
        <td>Busstop</td>
        <td><c:out value="${route.busstop.name}"/></td>
    </tr>
    <%--<tr>--%>
    <%--<td>Minutes to arrive</td>--%>
    <%--<td><c:out value="${route.minutesToArrive}"/></td>--%>
    <%--</tr>--%>
    </tbody>
</table>

<a href="/routes/edit/<c:out value="${route.id}"/>">Edit</a>
<a href="/routes/del/<c:out value="${route.id}"/>">Delete</a>

<jsp:include page="/WEB-INF/fragments/footer.jsp"/>
</body>
</html>
