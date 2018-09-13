<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<jsp:include page="../header.jsp"/>

<%--<div id="page-wrapper">--%>
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Login</h1>
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                Logout
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-6">

                        <form role="form" action="/logout" method="post">
                            <sec:csrfInput />
                            <div class="form-group">
                                <input type="submit" value="Logout"/>
                            </div>
                        </form>

                        <%--<form:form role="form" action="/login" modelAttribute="route" method="POST">--%>
                        <%--<form:hidden path="id"/>--%>

                        <%--<form:hidden path="orderNo"/>--%>
                        <%--<form:hidden path="line"/>--%>

                        <%--<div class="form-group">--%>
                        <%--Busstop--%>
                        <%--<form:select path="busstop">--%>
                        <%--<form:option value="" label="--Select busstop--"/>--%>
                        <%--<form:options items="${busstops}" itemLabel="name" itemValue="id"/>--%>
                        <%--</form:select>--%>
                        <%--<form:errors path="busstop" cssClass="error"/><br>--%>
                        <%--</div>--%>

                        <%--<input type="submit" value="Submit" class="btn btn-default">--%>
                        <%--</form:form>--%>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../footer.jsp"/>