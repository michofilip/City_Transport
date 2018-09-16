<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<jsp:include page="../header.jsp"/>

<%--<div id="page-wrapper">--%>
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Buses</h1>
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
                            <form role="form" action="/buses/admin/add" method="get">
                                <button class="btn btn-default">New bus</button>
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
                        <th>Plate number</th>
                        <th>Actions</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${buses}" var="bus">
                        <tr>
                                <%--<td><c:out value="${bus.id}"/></td>--%>
                            <td><c:out value="${bus.plateNumber}"/></td>
                            <td>
                                <a href="/buses/details/<c:out value="${bus.id}"/>">Details</a>
                                <sec:authorize access="hasRole('ADMIN')">
                                    <a href="/buses/admin/edit/<c:out value="${bus.id}"/>">Edit</a>
                                    <a href="/buses/admin/del/<c:out value="${bus.id}"/>" class="confirm">Delete</a>
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
<!-- /#page-wrapper -->

<jsp:include page="../footer.jsp"/>