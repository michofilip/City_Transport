<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="../header.jsp"/>

<%--<div id="page-wrapper">--%>
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Rides</h1>
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                Ride form
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-6">

                        <form:form role="form" action="/rides/admin/save" modelAttribute="ride" method="POST">
                            <form:hidden path="id"/>

                            <div class="form-group">
                                Routes
                                <form:select path="route">
                                    <form:option value="" label="--Select line number--"/>
                                    <form:options items="${routes}" itemLabel="description" itemValue="id"/>
                                </form:select>
                                <form:errors path="route" cssClass="error"/><br>
                            </div>

                            <div class="form-group">
                                Bus
                                <form:select path="bus">
                                    <form:option value="" label="--Select bus--"/>
                                    <form:options items="${buses}" itemLabel="plateNumber" itemValue="id"/>
                                </form:select>
                                <form:errors path="bus" cssClass="error"/><br>
                            </div>

                            <div class="form-group">
                                Arrival time
                                <form:select path="arrivalHour">
                                    <form:options items="${hours}"/>
                                </form:select>
                                <form:select path="arrivalMinutes">
                                    <form:options items="${minutes}"/>
                                </form:select>
                                <form:errors path="arrivalTime" cssClass="error"/><br>
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
