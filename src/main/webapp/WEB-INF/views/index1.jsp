<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<jsp:include page="header.jsp"/>

<%--<div id="page-wrapper">--%>
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">City Transport</h1>
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<!-- /.row -->
<div class="row">
    <a href="/generate">Clear and fill db</a>
    <br>
    DROP DATABASE IF EXISTS city_transport; CREATE DATABASE city_transport DEFAULT CHARACTER SET utf8mb4; USE
    city_transport;
    <!-- /.col-lg-4 -->
</div>


<div class="row">
    <div class="panel panel-default">
        <div class="panel-heading">
            Recent announcements
        </div>
        <!-- /.panel-heading -->
        <div class="panel-body">
            <div class="table-responsive">
                <table class="table table-striped table-bordered table-hover">
                    <thead>
                    <tr>
                        <%--<th>ID</th>--%>
                        <th>Created</th>
                        <th>Title</th>
                        <th>Content</th>
                        <%--<th>Actions</th>--%>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${announcements}" var="announcement">
                        <tr>
                                <%--<td><c:out value="${announcement.id}"/></td>--%>
                            <td>
                                <c:out value="${announcement.createdDate}"/>
                                <br>
                                <c:out value="${announcement.createdTime}"/>
                            </td>
                            <td>
                                <a href="/announcements/details/<c:out value="${announcement.id}"/>">
                                    <c:out value="${announcement.title}"/>
                                </a>
                            </td>
                            <td>
                                <a href="/announcements/details/<c:out value="${announcement.id}"/>">
                                    <c:if test="${fn:length(announcement.content) <= 200}">
                                        <c:out value="${announcement.content}"/>
                                    </c:if>
                                    <c:if test="${fn:length(announcement.content) > 300}">
                                        <c:out value="${fn:substring(announcement.content, 0, 300)}"/>...
                                    </c:if>
                                </a>
                            </td>
                                <%--<td><c:out value="${fn.substring(announcement.content, 0, 200)}"/>...</td>--%>
                                <%--<td>--%>
                                <%--<a href="/announcements/details/<c:out value="${announcement.id}"/>">Details</a>--%>
                                <%--<a href="/announcements/edit/<c:out value="${announcement.id}"/>">Edit</a>--%>
                                <%--<a href="/announcements/del/<c:out value="${announcement.id}"/>"--%>
                                <%--class="confirm">Delete</a>--%>
                                <%--</td>--%>
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

<jsp:include page="footer.jsp"/>
