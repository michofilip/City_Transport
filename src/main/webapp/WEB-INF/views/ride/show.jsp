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
                            <form role="form" action="/rides/admin/add" method="get">
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

                    <div class="col-lg-6">
                        <form role="form" action="/rides/showB" method="get">
                            <select name="busId">
                                <option value="-1">------</option>
                                <c:forEach var="bus" items="${buses}">
                                    <c:if test="${bus.id == busId}">
                                        <option value="${bus.id}" selected>${bus.id}</option>
                                    </c:if>
                                    <c:if test="${bus.id != busId}">
                                        <option value="${bus.id}">${bus.id}</option>
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
                            <td>
                                <a href="/lines/details/<c:out value="${ride.route.line.id}"/>"> ${ride.route.line.numberVariant}</a>
                            </td>
                            <td>
                                <a href="/busstops/details/<c:out value="${ride.route.busstop.id}"/>"> ${ride.route.busstop.name}</a>
                            </td>
                            <td><a href="/buses/details/<c:out value="${ride.bus.id}"/>"> ${ride.bus.id}</a></td>


                                <%--<td><c:out value="${ride.route.line.numberVariant}"/></td>--%>
                                <%--<td><c:out value="${ride.route.busstop.name}"/></td>--%>
                                <%--<td><c:out value="${ride.bus.id}"/></td>--%>
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