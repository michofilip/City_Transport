<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../header.jsp"/>

<%--<div id="page-wrapper">--%>
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Lines</h1>
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
            </div>
            <!-- /.table-responsive -->
            <a href="/lines/edit/<c:out value="${line.id}"/>">Edit</a>
            <a href="/lines/del/<c:out value="${line.id}"/>" class="confirm">Delete</a>
        </div>
        <!-- /.panel-body -->
    </div>

</div>
<!-- /.row -->

<div class="row">
    Busstops
    <ol>
        <c:forEach var="busstop" items="${busstops}">
            <c:set var="hour" value="-1"/>
            <li>
                <a href="/busstops/details/<c:out value="${busstop.id}"/>"> ${busstop.name}</a>
                <%--<c:out value="${busstop.name}"/>--%>
                <c:forEach var="schedule" items="${schedules.get(busstop.id)}">
                    <c:if test="${hour != schedule.arrivalTime.hour}">
                        <br>
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
                        <c:if test="${schedule.arrivalTime.minute < 10}">0</c:if><c:out
                            value="${schedule.arrivalTime.minute}"/>

                    </c:if>
                </c:forEach>
            </li>
        </c:forEach>
    </ol>
</div>

<%--</div>--%>
<!-- /#page-wrapper -->

<jsp:include page="../footer.jsp"/>


<%--&lt;%&ndash;--%>
<%--Created by IntelliJ IDEA.--%>
<%--User: michal--%>
<%--Date: 08.09.18--%>
<%--Time: 15:55--%>
<%--To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--<title>Line details</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<jsp:include page="/WEB-INF/fragments/header.jsp"/>--%>

<%--<table>--%>
<%--<tbody>--%>
<%--<tr>--%>
<%--<td>ID</td>--%>
<%--<td><c:out value="${line.id}"/></td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--<td>Number</td>--%>
<%--<td><c:out value="${line.number}"/></td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--<td>Variant</td>--%>
<%--<td><c:out value="${line.variant}"/></td>--%>
<%--</tr>--%>
<%--</tbody>--%>
<%--</table>--%>

<%--<a href="/lines/edit/<c:out value="${line.id}"/>">Edit</a>--%>
<%--<a href="/lines/del/<c:out value="${line.id}"/>">Delete</a>--%>


<%--<hr>--%>
<%--Busstops--%>

<%--<ol>--%>
<%--<c:forEach var="busstop" items="${busstops}">--%>
<%--<li>--%>
<%--<c:out value="${busstop.name}"/>--%>
<%--<c:forEach var="schedule" items="${schedules.get(busstop.id)}">--%>
<%--<c:if test="${hour != schedule.arrivalTime.hour}">--%>
<%--<br>--%>
<%--<c:out value="${schedule.arrivalTime.hour}"/>:--%>
<%--<c:set var="hour" value="${schedule.arrivalTime.hour}"/>--%>
<%--</c:if>--%>

<%--<c:if test="${hour == schedule.arrivalTime.hour}">--%>
<%--<c:if test="${schedule.arrivalTime.minute < 10}">--%>
<%--0<c:out value="${schedule.arrivalTime.minute}"/>--%>
<%--</c:if>--%>
<%--<c:if test="${schedule.arrivalTime.minute >= 10}">--%>
<%--<c:out value="${schedule.arrivalTime.minute}"/>--%>
<%--</c:if>--%>
<%--</c:if>--%>
<%--</c:forEach>--%>


<%--&lt;%&ndash;<ul>&ndash;%&gt;--%>
<%--&lt;%&ndash;<c:forEach var="schedule" items="${schedules.get(line.id)}">&ndash;%&gt;--%>
<%--&lt;%&ndash;<li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<c:out value="${schedule.arrivalTime}"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;</li>&ndash;%&gt;--%>
<%--&lt;%&ndash;</c:forEach>&ndash;%&gt;--%>
<%--&lt;%&ndash;</ul>&ndash;%&gt;--%>
<%--</li>--%>
<%--</c:forEach>--%>


<%--&lt;%&ndash;<c:forEach var="busstop" items="${busstops}">&ndash;%&gt;--%>
<%--&lt;%&ndash;<li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<c:out value="${busstop.name}"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;<ul>&ndash;%&gt;--%>
<%--&lt;%&ndash;<c:forEach var="schedule" items="${schedules.get(busstop.id)}">&ndash;%&gt;--%>
<%--&lt;%&ndash;<li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<c:out value="${schedule.arrivalTime}"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;</li>&ndash;%&gt;--%>
<%--&lt;%&ndash;</c:forEach>&ndash;%&gt;--%>
<%--&lt;%&ndash;</ul>&ndash;%&gt;--%>
<%--&lt;%&ndash;</li>&ndash;%&gt;--%>
<%--&lt;%&ndash;</c:forEach>&ndash;%&gt;--%>
<%--</ol>--%>

<%--<jsp:include page="/WEB-INF/fragments/footer.jsp"/>--%>
<%--</body>--%>
<%--</html>--%>
