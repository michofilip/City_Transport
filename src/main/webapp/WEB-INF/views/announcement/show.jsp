<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<jsp:include page="../header.jsp"/>

<%--<div id="page-wrapper">--%>
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Announcements</h1>
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
                            <form role="form" action="/announcements/admin/add" method="get">
                                <button class="btn btn-default">New announcement</button>
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
            List of announcements
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
                        <th>Actions</th>
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
                            <td>
                                <a href="/announcements/details/<c:out value="${announcement.id}"/>">Details</a>
                                <sec:authorize access="hasRole('ADMIN')">
                                    <a href="/announcements/admin/edit/<c:out value="${announcement.id}"/>">Edit</a>
                                    <a href="/announcements/admin/del/<c:out value="${announcement.id}"/>"
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


<jsp:include page="../footer.jsp"/>