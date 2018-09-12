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
    <title>Line details</title>
</head>
<body>
<jsp:include page="/WEB-INF/fragments/header.jsp"/>

<table>
    <tbody>
    <tr>
        <td>ID</td>
        <td><c:out value="${line.id}"/></td>
    </tr>
    <tr>
        <td>Number</td>
        <td><c:out value="${line.number}"/></td>
    </tr>
    <tr>
        <td>Variant</td>
        <td><c:out value="${line.variant}"/></td>
    </tr>
    </tbody>
</table>

<a href="/lines/edit/<c:out value="${line.id}"/>">Edit</a>
<a href="/lines/del/<c:out value="${line.id}"/>">Delete</a>


<hr>
Busstops

<ol>
    <c:forEach var="busstop" items="${busstops}">
        <li>
            <c:out value="${busstop.name}"/>
            <c:forEach var="schedule" items="${schedules.get(busstop.id)}">
                <c:if test="${hour != schedule.arrivalTime.hour}">
                    <br>
                    <c:out value="${schedule.arrivalTime.hour}"/>:
                    <c:set var="hour" value="${schedule.arrivalTime.hour}"/>
                </c:if>

                <c:if test="${hour == schedule.arrivalTime.hour}">
                    <c:if test="${schedule.arrivalTime.minute < 10}">
                        0<c:out value="${schedule.arrivalTime.minute}"/>
                    </c:if>
                    <c:if test="${schedule.arrivalTime.minute >= 10}">
                        <c:out value="${schedule.arrivalTime.minute}"/>
                    </c:if>
                </c:if>
            </c:forEach>


                <%--<ul>--%>
                <%--<c:forEach var="schedule" items="${schedules.get(line.id)}">--%>
                <%--<li>--%>
                <%--<c:out value="${schedule.arrivalTime}"/>--%>
                <%--</li>--%>
                <%--</c:forEach>--%>
                <%--</ul>--%>
        </li>
    </c:forEach>


    <%--<c:forEach var="busstop" items="${busstops}">--%>
        <%--<li>--%>
            <%--<c:out value="${busstop.name}"/>--%>
            <%--<ul>--%>
                <%--<c:forEach var="schedule" items="${schedules.get(busstop.id)}">--%>
                    <%--<li>--%>
                        <%--<c:out value="${schedule.arrivalTime}"/>--%>
                    <%--</li>--%>
                <%--</c:forEach>--%>
            <%--</ul>--%>
        <%--</li>--%>
    <%--</c:forEach>--%>
</ol>

<jsp:include page="/WEB-INF/fragments/footer.jsp"/>
</body>
</html>
