<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../header.jsp"/>

<%--<div id="page-wrapper">--%>
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Rides</h1>
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
                    </tbody>
                </table>
            </div>
            <!-- /.table-responsive -->
            <a href="/rides/edit/<c:out value="${ride.id}"/>">Edit</a>
            <a href="/rides/del/<c:out value="${ride.id}"/>" class="confirm">Delete</a>
        </div>
        <!-- /.panel-body -->
    </div>

</div>
<!-- /.row -->

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
<%--<title>Ride details</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<jsp:include page="/WEB-INF/fragments/header.jsp"/>--%>

<%--<table>--%>
<%--<tbody>--%>
<%--<tr>--%>
<%--<td>ID</td>--%>
<%--<td><c:out value="${ride.id}"/></td>--%>
<%--</tr>--%>
<%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;<td>Route</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;<td><c:out value="${ride.route.id}"/></td>&ndash;%&gt;--%>
<%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
<%--<tr>--%>
<%--<td>Line</td>--%>
<%--<td><c:out value="${ride.route.line.numberVariant}"/></td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--<td>Busstop</td>--%>
<%--<td><c:out value="${ride.route.busstop.name}"/></td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--<td>Bus</td>--%>
<%--<td><c:out value="${ride.bus.id}"/></td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--<td>Arrival time</td>--%>
<%--<td><c:out value="${ride.arrivalTime}"/></td>--%>
<%--</tr>--%>
<%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;<td>Start time</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;<td><c:out value="${ride.startTime}"/></td>&ndash;%&gt;--%>
<%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
<%--</tbody>--%>
<%--</table>--%>

<%--<a href="/rides/edit/<c:out value="${ride.id}"/>">Edit</a>--%>
<%--<a href="/rides/del/<c:out value="${ride.id}"/>">Delete</a>--%>

<%--<jsp:include page="/WEB-INF/fragments/footer.jsp"/>--%>
<%--</body>--%>
<%--</html>--%>
