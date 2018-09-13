<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<jsp:include page="../header.jsp"/>

<%--<div id="page-wrapper">--%>
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Lines</h1>
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
                            <form role="form" action="/lines/admin/add" method="get">
                                <button class="btn btn-default">New line</button>
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
                        <th>Number</th>
                        <th>Variant</th>
                        <th>Actions</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="line" items="${lines}">
                        <tr>
                                <%--<td><c:out value="${line.id}"/></td>--%>
                            <td><c:out value="${line.number}"/></td>
                            <td><c:out value="${line.variant}"/></td>
                            <td>
                                <a href="/lines/details/<c:out value="${line.id}"/>">Details</a>
                                <sec:authorize access="hasRole('ADMIN')">
                                    <a href="/lines/admin/edit/<c:out value="${line.id}"/>">Edit</a>
                                    <a href="/lines/admin/del/<c:out value="${line.id}"/>" class="confirm"
                                       class="confirm">Delete</a>
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
<%--<title>Lines</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<jsp:include page="/WEB-INF/fragments/header.jsp"/>--%>

<%--<h2>Lines</h2>--%>

<%--<form action="/lines/add" method="get">--%>
<%--<button>New line</button>--%>
<%--</form>--%>

<%--<table>--%>
<%--<thead>--%>
<%--<tr>--%>
<%--<th>ID</th>--%>
<%--<th>Number</th>--%>
<%--<th>Variant</th>--%>
<%--<th>Actions</th>--%>
<%--</tr>--%>
<%--</thead>--%>
<%--<tbody>--%>
<%--<c:forEach var="line" items="${lines}">--%>
<%--<tr>--%>
<%--<td><c:out value="${line.id}"/></td>--%>
<%--<td><c:out value="${line.number}"/></td>--%>
<%--<td><c:out value="${line.variant}"/></td>--%>
<%--<td>--%>
<%--<a href="/lines/details/<c:out value="${line.id}"/>">Details</a>--%>
<%--<a href="/lines/edit/<c:out value="${line.id}"/>">Edit</a>--%>
<%--<a href="/lines/del/<c:out value="${line.id}"/>">Delete</a>--%>
<%--</td>--%>
<%--</tr>--%>
<%--</c:forEach>--%>
<%--</tbody>--%>
<%--</table>--%>


<%--<jsp:include page="/WEB-INF/fragments/footer.jsp"/>--%>
<%--</body>--%>
<%--</html>--%>
