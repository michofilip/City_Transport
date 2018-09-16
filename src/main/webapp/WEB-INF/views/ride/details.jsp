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
                    <%--<td><c:out value="${ride.id}"/></td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                    <%--<td>Route</td>--%>
                    <%--<td><c:out value="${ride.route.id}"/></td>--%>
                    <%--</tr>--%>
                    <tr>
                        <td>Line</td>
                        <td>
                            <a href="/lines/details/<c:out value="${ride.route.line.id}"/>"> ${ride.route.line.numberVariant}</a>
                        </td>
                        <%--<td><c:out value="${ride.route.line.numberVariant}"/></td>--%>
                    </tr>
                    <tr>
                        <td>Busstop</td>
                        <td>
                            <a href="/busstops/details/<c:out value="${ride.route.busstop.id}"/>"> ${ride.route.busstop.name}</a>
                        </td>
                        <%--<td><c:out value="${ride.route.busstop.name}"/></td>--%>
                    </tr>
                    <tr>
                        <td>Bus</td>
                        <td><a href="/buses/details/<c:out value="${ride.bus.id}"/>"> ${ride.bus.id}</a></td>
                        <%--<td><c:out value="${ride.bus.id}"/></td>--%>
                    </tr>
                    <tr>
                        <td>Arrival time</td>
                        <td><c:out value="${ride.arrivalTime}"/></td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <!-- /.table-responsive -->
            <sec:authorize access="hasRole('ADMIN')">
                <a href="/rides/admin/edit/<c:out value="${ride.id}"/>">Edit</a>
                <a href="/rides/admin/del/<c:out value="${ride.id}"/>" class="confirm">Delete</a>
            </sec:authorize>
        </div>
        <!-- /.panel-body -->
    </div>

</div>
<!-- /.row -->

<%--</div>--%>
<!-- /#page-wrapper -->

<jsp:include page="../footer.jsp"/>