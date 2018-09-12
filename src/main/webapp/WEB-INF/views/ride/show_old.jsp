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
    <title>Rides</title>
</head>
<body>
<jsp:include page="/WEB-INF/fragments/header.jsp"/>

<h2>Rides</h2>

<form action="/rides/add" method="get">
    <button>New ride</button>
</form>

<form action="/rides/show" method="get">
    <select name="routeId">
        <option value="-1">------</option>
        <c:forEach var="route" items="${routes}">
            <option value="${route.id}">${route.description}</option>
        </c:forEach>
    </select>

    <%--<select name="lineId">--%>
    <%--<c:forEach var="line" items="${lines}">--%>
    <%--<option value="${line.id}">${line.numberVariant}</option>--%>
    <%--</c:forEach>--%>
    <%--</select>--%>
    <%--<select name="busstopId">--%>
    <%--<c:forEach var="busstop" items="${busstops}">--%>
    <%--<option value="${busstop.id}">${busstop.name}</option>--%>
    <%--</c:forEach>--%>
    <%--</select>--%>
    <input type="submit" value="submit">
</form>

<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Line</th>
        <th>Busstop</th>
        <th>Bus</th>
        <th>Arrival time</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="ride" items="${rides}">
        <tr>
            <td><c:out value="${ride.id}"/></td>
            <td><c:out value="${ride.route.line.numberVariant}"/></td>
            <td><c:out value="${ride.route.busstop.name}"/></td>
            <td><c:out value="${ride.bus.id}"/></td>
            <td><c:out value="${ride.arrivalTime}"/></td>
            <td>
                <a href="/rides/details/<c:out value="${ride.id}"/>">Details</a>
                <a href="/rides/edit/<c:out value="${ride.id}"/>">Edit</a>
                <a href="/rides/del/<c:out value="${ride.id}"/>">Delete</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<jsp:include page="/WEB-INF/fragments/footer.jsp"/>
</body>
</html>
