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

<sec:authorize access="hasRole('ADMIN')">
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-6">
                            <form role="form" action="/busstops/admin/add" method="get">
                                <button class="btn btn-default">New busstop</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</sec:authorize>
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
                        <%--<th>ID</th>--%>
                        <th>Name</th>
                        <th>Actions</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="busstop" items="${busstops}">
                        <tr>
                                <%--<td><c:out value="${busstop.id}"/></td>--%>
                            <td><c:out value="${busstop.name}"/></td>
                            <td>
                                <a href="/busstops/details/<c:out value="${busstop.id}"/>">Details</a>
                                <sec:authorize access="hasRole('ADMIN')">
                                    <a href="/busstops/admin/edit/<c:out value="${busstop.id}"/>">Edit</a>
                                    <a href="/busstops/admin/del/<c:out value="${busstop.id}"/>" class="confirm">Delete</a>
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
<%--<title>Busstops</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<jsp:include page="/WEB-INF/fragments/header.jsp"/>--%>

<%--<h2>Busstops</h2>--%>

<%--<form action="/busstops/add" method="get">--%>
<%--<button>New busstop</button>--%>
<%--</form>--%>

<%--<table>--%>
<%--<thead>--%>
<%--<tr>--%>
<%--<th>ID</th>--%>
<%--<th>Name</th>--%>
<%--<th>Actions</th>--%>
<%--</tr>--%>
<%--</thead>--%>
<%--<tbody>--%>
<%--<c:forEach var="busstop" items="${busstops}">--%>
<%--<tr>--%>
<%--<td><c:out value="${busstop.id}"/></td>--%>
<%--<td><c:out value="${busstop.name}"/></td>--%>
<%--<td>--%>
<%--<a href="/busstops/details/<c:out value="${busstop.id}"/>">Details</a>--%>
<%--<a href="/busstops/edit/<c:out value="${busstop.id}"/>">Edit</a>--%>
<%--<a href="/busstops/del/<c:out value="${busstop.id}"/>">Delete</a>--%>
<%--</td>--%>
<%--</tr>--%>
<%--</c:forEach>--%>
<%--</tbody>--%>
<%--</table>--%>


<%--<jsp:include page="/WEB-INF/fragments/footer.jsp"/>--%>
<%--</body>--%>
<%--</html>--%>
