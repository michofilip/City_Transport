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
    <title>Ride details</title>
</head>
<body>
<jsp:include page="/WEB-INF/fragments/header.jsp"/>

<table>
    <tbody>
    <tr>
        <td>ID</td>
        <td><c:out value="${ride.id}"/></td>
    </tr>
    <%--<tr>--%>
        <%--<td>Route</td>--%>
        <%--<td><c:out value="${ride.route.id}"/></td>--%>
    <%--</tr>--%>
    <tr>
        <td>Line</td>
        <td><c:out value="${ride.route.line.numberVariant}"/></td>
    </tr>
    <tr>
        <td>Busstop</td>
        <td><c:out value="${ride.route.busstop.name}"/></td>
    </tr>
    <tr>
        <td>Bus</td>
        <td><c:out value="${ride.bus.id}"/></td>
    </tr>
    <tr>
        <td>Arrival time</td>
        <td><c:out value="${ride.arrivalTime}"/></td>
    </tr>
    <%--<tr>--%>
    <%--<td>Start time</td>--%>
    <%--<td><c:out value="${ride.startTime}"/></td>--%>
    <%--</tr>--%>
    </tbody>
</table>

<a href="/rides/edit/<c:out value="${ride.id}"/>">Edit</a>
<a href="/rides/del/<c:out value="${ride.id}"/>">Delete</a>

<jsp:include page="/WEB-INF/fragments/footer.jsp"/>
</body>
</html>
