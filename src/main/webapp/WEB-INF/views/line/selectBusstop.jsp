<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="../header.jsp"/>

<%--<div id="page-wrapper">--%>
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Lines</h1>
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                Select busstop
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-6">

                        <form:form role="form" action="/lines/admin/addBusstop/save" modelAttribute="route" method="POST">
                            <form:hidden path="id"/>

                            <form:hidden path="orderNo"/>
                            <form:hidden path="line"/>

                            <div class="form-group">
                                Busstop
                                <form:select path="busstop">
                                    <form:option value="" label="--Select busstop--"/>
                                    <form:options items="${busstops}" itemLabel="name" itemValue="id"/>
                                </form:select>
                                <form:errors path="busstop" cssClass="error"/><br>
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