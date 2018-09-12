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
    <title>Busstop details</title>
</head>
<body>
<jsp:include page="/WEB-INF/fragments/header.jsp"/>

<table>
    <tbody>
    <tr>
        <td>ID</td>
        <td><c:out value="${busstop.id}"/></td>
    </tr>
    <tr>
        <td>Name</td>
        <td><c:out value="${busstop.name}"/></td>
    </tr>
    </tbody>
</table>

<a href="/busstops/edit/<c:out value="${busstop.id}"/>">Edit</a>
<a href="/busstops/del/<c:out value="${busstop.id}"/>">Delete</a>

<%--<ul>--%>
<%--<c:forEach var="ride" items="${rides}">--%>
<%--<li>--%>
<%--<c:out value="${ride.route.line.number}"/>--%>
<%--<c:out value="${ride.arrivalTime}"/>--%>
<%--</li>--%>
<%--</c:forEach>--%>
<%--</ul>--%>

<ul>
    <c:forEach var="line" items="${lines}">
        <li>
            <c:out value="${line.number}"/>
            <ul>
                <c:forEach var="schedule" items="${schedules.get(line.id)}">
                    <li>
                        <c:out value="${schedule.arrivalTime}"/>
                    </li>
                </c:forEach>
            </ul>
        </li>
    </c:forEach>
</ul>

<%--<ul>--%>
<%--<c:forEach var="list" items="${collect}">--%>
<%--<li>--%>
<%--<c:out value="${list.get(0).route.line.number}"/>--%>
<%--<ul>--%>
<%--<c:forEach var="elem" items="${list}">--%>
<%--<li>--%>
<%--<c:out value="${elem.arrivalTime}"/>--%>
<%--</li>--%>
<%--</c:forEach>--%>
<%--</ul>--%>
<%--</li>--%>
<%--</c:forEach>--%>
<%--</ul>--%>


<jsp:include page="/WEB-INF/fragments/footer.jsp"/>
</body>
</html>
