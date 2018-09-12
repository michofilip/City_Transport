<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../header.jsp"/>

<%--<div id="page-wrapper">--%>
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Buses</h1>
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
                        <td><c:out value="${bus.id}"/></td>
                    </tr>
                    <tr>
                        <td>Plate number</td>
                        <td><c:out value="${bus.plateNumber}"/></td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <!-- /.table-responsive -->
            <a href="/buses/edit/<c:out value="${bus.id}"/>">Edit</a>
            <a href="/buses/del/<c:out value="${bus.id}"/>" class="confirm">Delete</a>
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
<%--<title>Bus details</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<jsp:include page="/WEB-INF/fragments/header.jsp"/>--%>

<%--<table>--%>
<%--<tbody>--%>
<%--<tr>--%>
<%--<td>ID</td>--%>
<%--<td><c:out value="${bus.id}"/></td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--<td>Plate number</td>--%>
<%--<td><c:out value="${bus.plateNumber}"/></td>--%>
<%--</tr>--%>
<%--</tbody>--%>
<%--</table>--%>

<%--<a href="/buses/edit/<c:out value="${bus.id}"/>">Edit</a>--%>
<%--<a href="/buses/del/<c:out value="${bus.id}"/>">Delete</a>--%>

<%--<jsp:include page="/WEB-INF/fragments/footer.jsp"/>--%>
<%--</body>--%>
<%--</html>--%>
