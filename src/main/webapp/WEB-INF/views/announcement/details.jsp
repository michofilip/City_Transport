<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<jsp:include page="../header.jsp"/>

<%--<div id="page-wrapper">--%>
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Announcements</h1>
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
                        <%--<td><c:out value="${announcement.id}"/></td>--%>
                    <%--</tr>--%>
                    <tr>
                        <td>Created</td>
                        <%--<td><c:out value="${announcement.created}"/></td>--%>
                        <td>
                            <c:out value="${announcement.createdDate}"/>
                            <c:out value="${announcement.createdTime}"/>
                        </td>
                    </tr>
                    <tr>
                        <td>Title</td>
                        <td><c:out value="${announcement.title}"/></td>
                    </tr>
                    <tr>
                        <td>Content</td>
                        <td><c:out value="${announcement.content}"/></td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <!-- /.table-responsive -->
            <sec:authorize access="hasRole('ADMIN')">
                <a href="/announcements/admin/edit/<c:out value="${announcement.id}"/>">Edit</a>
                <a href="/announcements/admin/del/<c:out value="${announcement.id}"/>" class="confirm">Delete</a>
            </sec:authorize>
        </div>
        <!-- /.panel-body -->
    </div>

</div>

<jsp:include page="../footer.jsp"/>