<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../header.jsp"/>

<%--<div id="page-wrapper">--%>
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Buses</h1>
    </div>
    <!-- /.col-lg-12 -->
</div>

<div class="row">

    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-6">
                        <form role="form" action="/buses/add" method="get">
                            <button class="btn btn-default">New bus</button>
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
            List of buses
        </div>
        <!-- /.panel-heading -->
        <div class="panel-body">
            <div class="table-responsive">
                <table class="table table-striped table-bordered table-hover">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Plate number</th>
                        <th>Actions</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${buses}" var="bus">
                        <tr>
                            <td><c:out value="${bus.id}"/></td>
                            <td><c:out value="${bus.plateNumber}"/></td>
                            <td>
                                <a href="/buses/details/<c:out value="${bus.id}"/>">Details</a>
                                <a href="/buses/edit/<c:out value="${bus.id}"/>">Edit</a>
                                <a class="confirm" href="/buses/del/<c:out value="${bus.id}"/>" class="confirm">Delete</a>
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
<!-- /#page-wrapper -->

<jsp:include page="../footer.jsp"/>


<%--
  Created by IntelliJ IDEA.
  User: michal
  Date: 08.09.18
  Time: 15:12
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--<title>Buses</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<jsp:include page="/WEB-INF/fragments/header.jsp"/>--%>

<%--<h2>Buses</h2>--%>

<%--<form action="/buses/add" method="get">--%>
<%--<button>New bus</button>--%>
<%--</form>--%>

<%--<table>--%>
<%--<thead>--%>
<%--<tr>--%>
<%--<th>ID</th>--%>
<%--<th>Plate number</th>--%>
<%--<th>Actions</th>--%>
<%--</tr>--%>
<%--</thead>--%>
<%--<tbody>--%>
<%--<c:forEach var="bus" items="${buses}">--%>
<%--<tr>--%>
<%--<td><c:out value="${bus.id}"/></td>--%>
<%--<td><c:out value="${bus.plateNumber}"/></td>--%>
<%--<td>--%>
<%--<a href="/buses/details/<c:out value="${bus.id}"/>">Details</a>--%>
<%--<a href="/buses/edit/<c:out value="${bus.id}"/>">Edit</a>--%>
<%--<a href="/buses/del/<c:out value="${bus.id}"/>">Delete</a>--%>
<%--</td>--%>
<%--</tr>--%>
<%--</c:forEach>--%>
<%--</tbody>--%>
<%--</table>--%>


<%--<jsp:include page="/WEB-INF/fragments/footer.jsp"/>--%>
<%--</body>--%>
<%--</html>--%>
