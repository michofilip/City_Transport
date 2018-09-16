<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="../header.jsp"/>

<%--<div id="page-wrapper">--%>
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Announcement</h1>
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                Announcement form
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-6">

                        <form:form role="form" action="/announcements/admin/save" modelAttribute="announcement" method="POST">
                            <form:hidden path="id"/>
                            <form:hidden path="created"/>

                            <div class="form-group">
                                Title
                                <form:input path="title" cssErrorClass="error"/>
                                <form:errors path="title" cssClass="error"/><br>
                            </div>

                            <div class="form-group">
                                Content
                                <form:textarea path="content" cssErrorClass="error" rows="20" cols="100"/>
                                <form:errors path="content" cssClass="error"/><br>
                            </div>

                            <input type="submit" value="Submit" class="btn btn-default">
                        </form:form>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<%--<div class="row">--%>

<%--</div>--%>
<%--</div>--%>

<jsp:include page="../footer.jsp"/>