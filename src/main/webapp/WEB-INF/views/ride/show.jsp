<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<jsp:include page="../header.jsp"/>

<%--<div id="page-wrapper">--%>
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Rides</h1>
    </div>
    <!-- /.col-lg-12 -->
</div>

<sec:authorize access="hasRole('ADMIN')">
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-6">
                            <form role="form" action="/rides/add" method="get">
                                <button class="btn btn-default">New ride</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</sec:authorize>

<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-6">
                        <form role="form" action="/rides/show" method="get">
                            <select name="routeId">
                                <option value="-1">------</option>
                                <c:forEach var="route" items="${routes}">
                                    <c:if test="${route.id == routeId}">
                                        <option value="${route.id}" selected>${route.description}</option>
                                    </c:if>
                                    <c:if test="${route.id != routeId}">
                                        <option value="${route.id}">${route.description}</option>
                                    </c:if>
                                </c:forEach>
                            </select>

                            <input type="submit" value="submit">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /.row -->

<!-- /.row -->
<div class="row">
    <div class="panel panel-default">
        <div class="panel-heading">
            List of rides
        </div>
        <!-- /.panel-heading -->
        <div class="panel-body">
            <div class="table-responsive">
                <table class="table table-striped table-bordered table-hover">
                    <thead>
                    <tr>
                    <tr>
                        <%--<th>ID</th>--%>
                        <th>Line</th>
                        <th>Busstop</th>
                        <th>Bus</th>
                        <th>Arrival time</th>
                        <th>Actions</th>
                    </tr>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="ride" items="${rides}">
                        <tr>
                                <%--<td><c:out value="${ride.id}"/></td>--%>
                            <td><c:out value="${ride.route.line.numberVariant}"/></td>
                            <td><c:out value="${ride.route.busstop.name}"/></td>
                            <td><c:out value="${ride.bus.id}"/></td>
                            <td><c:out value="${ride.arrivalTime}"/></td>
                            <td>
                                <a href="/rides/details/<c:out value="${ride.id}"/>">Details</a>
                                <sec:authorize access="hasRole('ADMIN')">
                                    <a href="/rides/admin/edit/<c:out value="${ride.id}"/>">Edit</a>
                                    <a href="/rides/admin/del/<c:out value="${ride.id}"/>" class="confirm">Delete</a>
                                </sec:authorize>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
            <!-- /.table-responsive -->
        </div>
        <!-- /.panel-body -->
    </div>

</div>
<!-- /.row -->
<%--</div>--%>

<jsp:include page="../footer.jsp"/>


<%--&lt;%&ndash;--%>
<%--Created by IntelliJ IDEA.--%>
<%--User: michal--%>
<%--Date: 08.09.18--%>
<%--Time: 15:12--%>
<%--To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--<title>Rides</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<jsp:include page="/WEB-INF/fragments/header.jsp"/>--%>

<%--<h2>Rides</h2>--%>

<%--<form action="/rides/add" method="get">--%>
<%--<button>New ride</button>--%>
<%--</form>--%>

<%--<form action="/rides/show" method="get">--%>
<%--<select name="routeId">--%>
<%--<option value="-1">------</option>--%>
<%--<c:forEach var="route" items="${routes}">--%>
<%--<option value="${route.id}">${route.description}</option>--%>
<%--</c:forEach>--%>
<%--</select>--%>

<%--&lt;%&ndash;<select name="lineId">&ndash;%&gt;--%>
<%--&lt;%&ndash;<c:forEach var="line" items="${lines}">&ndash;%&gt;--%>
<%--&lt;%&ndash;<option value="${line.id}">${line.numberVariant}</option>&ndash;%&gt;--%>
<%--&lt;%&ndash;</c:forEach>&ndash;%&gt;--%>
<%--&lt;%&ndash;</select>&ndash;%&gt;--%>
<%--&lt;%&ndash;<select name="busstopId">&ndash;%&gt;--%>
<%--&lt;%&ndash;<c:forEach var="busstop" items="${busstops}">&ndash;%&gt;--%>
<%--&lt;%&ndash;<option value="${busstop.id}">${busstop.name}</option>&ndash;%&gt;--%>
<%--&lt;%&ndash;</c:forEach>&ndash;%&gt;--%>
<%--&lt;%&ndash;</select>&ndash;%&gt;--%>
<%--<input type="submit" value="submit">--%>
<%--</form>--%>

<%--<table>--%>
<%--<thead>--%>
<%--<tr>--%>
<%--<th>ID</th>--%>
<%--<th>Line</th>--%>
<%--<th>Busstop</th>--%>
<%--<th>Bus</th>--%>
<%--<th>Arrival time</th>--%>
<%--<th>Actions</th>--%>
<%--</tr>--%>
<%--</thead>--%>
<%--<tbody>--%>
<%--<c:forEach var="ride" items="${rides}">--%>
<%--<tr>--%>
<%--<td><c:out value="${ride.id}"/></td>--%>
<%--<td><c:out value="${ride.route.line.numberVariant}"/></td>--%>
<%--<td><c:out value="${ride.route.busstop.name}"/></td>--%>
<%--<td><c:out value="${ride.bus.id}"/></td>--%>
<%--<td><c:out value="${ride.arrivalTime}"/></td>--%>
<%--<td>--%>
<%--<a href="/rides/details/<c:out value="${ride.id}"/>">Details</a>--%>
<%--<a href="/rides/edit/<c:out value="${ride.id}"/>">Edit</a>--%>
<%--<a href="/rides/del/<c:out value="${ride.id}"/>">Delete</a>--%>
<%--</td>--%>
<%--</tr>--%>
<%--</c:forEach>--%>
<%--</tbody>--%>
<%--</table>--%>

<%--<jsp:include page="/WEB-INF/fragments/footer.jsp"/>--%>
<%--</body>--%>
<%--</html>--%>
