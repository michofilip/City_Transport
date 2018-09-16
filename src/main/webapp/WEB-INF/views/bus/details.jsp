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
                    <%--<td><c:out value="${bus.id}"/></td>--%>
                    <%--</tr>--%>
                    <tr>
                        <td>Plate number</td>
                        <td><c:out value="${bus.plateNumber}"/></td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <!-- /.table-responsive -->
            <sec:authorize access="hasRole('ADMIN')">
                <a href="/buses/admin/edit/<c:out value="${bus.id}"/>">Edit</a>
                <a href="/buses/admin/del/<c:out value="${bus.id}"/>" class="confirm">Delete</a>
            </sec:authorize>
        </div>
        <!-- /.panel-body -->
    </div>

</div>
<!-- /.row -->
<%--</div>--%>
<!-- /#page-wrapper -->

<jsp:include page="../footer.jsp"/>