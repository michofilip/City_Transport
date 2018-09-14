<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<jsp:include page="../header.jsp"/>

<%--<div id="page-wrapper">--%>
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Busstops</h1>
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<!-- /.row -->
<div class="row">

    <div class="panel panel-default">
        <div class="panel-heading">
            Details
        </div>
        <!-- /.panel-heading -->
        <div class="panel-body">
            <div class="table-responsive">
                <table class="table table-striped table-bordered table-hover">
                    <tbody>
                    <%--<tr>--%>
                    <%--<td>ID</td>--%>
                    <%--<td><c:out value="${busstop.id}"/></td>--%>
                    <%--</tr>--%>
                    <tr>
                        <td>Name</td>
                        <td><c:out value="${busstop.name}"/></td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <!-- /.table-responsive -->
            <sec:authorize access="hasRole('ADMIN')">
                <a href="/busstops/admin/edit/<c:out value="${busstop.id}"/>">Edit</a>
                <a href="/busstops/admin/del/<c:out value="${busstop.id}"/>" class="confirm">Delete</a>
            </sec:authorize>
        </div>
        <!-- /.panel-body -->
    </div>

</div>
<!-- /.row -->

<div class="row">
    <%--<ul>--%>
    <c:forEach var="line" items="${lines}">
        <div class="panel panel-default">
                <%--<li>--%>
            <div class="panel-heading custSlide custUp">
                <c:set var="hour" value="-1"/>
                Line:
                <a href="/lines/details/<c:out value="${line.id}"/>"><c:out value="${line.numberVariant}"/></a>
                <br>
                Route:
                <c:forEach var="busstop" items="${busstops.get(line.id)}" varStatus="varStatus">
                    <a href="/busstops/details/<c:out value="${busstop.id}"/>"> ${busstop.name}</a>
                    <c:if test="${!varStatus.last}">
                        <span class="fa fa-long-arrow-right "></span>
                    </c:if>
                </c:forEach>
            </div>

            <div class="panel-body">
                <c:forEach var="schedule" items="${schedules.get(line.id)}" varStatus="varStatus">
                    <c:if test="${hour != schedule.arrivalTime.hour}">
                        <c:if test="${!varStatus.first}">
                            <br>
                        </c:if>

                        <c:out value="${schedule.arrivalTime.hour}"/>:
                        <c:set var="hour" value="${schedule.arrivalTime.hour}"/>
                    </c:if>

                    <c:if test="${hour == schedule.arrivalTime.hour}">
                        <%--<c:if test="${schedule.arrivalTime.minute < 10}">--%>
                        <%--0<c:out value="${schedule.arrivalTime.minute}"/>--%>
                        <%--</c:if>--%>
                        <%--<c:if test="${schedule.arrivalTime.minute >= 10}">--%>
                        <%--<c:out value="${schedule.arrivalTime.minute}"/>--%>
                        <%--</c:if>--%>
                        <%----%>

                        <c:if test="${schedule.arrivalTime.minute < 10}">0</c:if><c:out
                            value="${schedule.arrivalTime.minute}"/>

                    </c:if>
                </c:forEach>
            </div>

                <%--</li>--%>
        </div>
    </c:forEach>
    <%--</ul>--%>
</div>

<%--<ul>--%>
<%--<c:forEach var="line" items="${lines}">--%>
<%--<li>--%>
<%--<c:out value="${line.number}"/>--%>
<%--<ul>--%>
<%--<c:forEach var="schedule" items="${schedules.get(line.id)}">--%>
<%--<li>--%>
<%--<c:out value="${schedule.arrivalTime}"/>--%>
<%--</li>--%>
<%--</c:forEach>--%>
<%--</ul>--%>
<%--</li>--%>
<%--</c:forEach>--%>
<%--</ul>--%>

<%--</div>--%>
<!-- /#page-wrapper -->

<jsp:include page="../footer.jsp"/>
<%--
  Created by IntelliJ IDEA.
  User: michal
  Date: 08.09.18
  Time: 15:55
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--<title>Busstop details</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<jsp:include page="/WEB-INF/fragments/header.jsp"/>--%>

<%--<table>--%>
<%--<tbody>--%>
<%--<tr>--%>
<%--<td>ID</td>--%>
<%--<td><c:out value="${busstop.id}"/></td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--<td>Name</td>--%>
<%--<td><c:out value="${busstop.name}"/></td>--%>
<%--</tr>--%>
<%--</tbody>--%>
<%--</table>--%>

<%--<a href="/busstops/edit/<c:out value="${busstop.id}"/>">Edit</a>--%>
<%--<a href="/busstops/del/<c:out value="${busstop.id}"/>">Delete</a>--%>

<%--&lt;%&ndash;<ul>&ndash;%&gt;--%>
<%--&lt;%&ndash;<c:forEach var="ride" items="${rides}">&ndash;%&gt;--%>
<%--&lt;%&ndash;<li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<c:out value="${ride.route.line.number}"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;<c:out value="${ride.arrivalTime}"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;</li>&ndash;%&gt;--%>
<%--&lt;%&ndash;</c:forEach>&ndash;%&gt;--%>
<%--&lt;%&ndash;</ul>&ndash;%&gt;--%>

<%--<ul>--%>
<%--<c:forEach var="line" items="${lines}">--%>
<%--<li>--%>
<%--<c:out value="${line.number}"/>--%>
<%--<ul>--%>
<%--<c:forEach var="schedule" items="${schedules.get(line.id)}">--%>
<%--<li>--%>
<%--<c:out value="${schedule.arrivalTime}"/>--%>
<%--</li>--%>
<%--</c:forEach>--%>
<%--</ul>--%>
<%--</li>--%>
<%--</c:forEach>--%>
<%--</ul>--%>

<%--&lt;%&ndash;<ul>&ndash;%&gt;--%>
<%--&lt;%&ndash;<c:forEach var="list" items="${collect}">&ndash;%&gt;--%>
<%--&lt;%&ndash;<li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<c:out value="${list.get(0).route.line.number}"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;<ul>&ndash;%&gt;--%>
<%--&lt;%&ndash;<c:forEach var="elem" items="${list}">&ndash;%&gt;--%>
<%--&lt;%&ndash;<li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<c:out value="${elem.arrivalTime}"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;</li>&ndash;%&gt;--%>
<%--&lt;%&ndash;</c:forEach>&ndash;%&gt;--%>
<%--&lt;%&ndash;</ul>&ndash;%&gt;--%>
<%--&lt;%&ndash;</li>&ndash;%&gt;--%>
<%--&lt;%&ndash;</c:forEach>&ndash;%&gt;--%>
<%--&lt;%&ndash;</ul>&ndash;%&gt;--%>


<%--<jsp:include page="/WEB-INF/fragments/footer.jsp"/>--%>
<%--</body>--%>
<%--</html>--%>
