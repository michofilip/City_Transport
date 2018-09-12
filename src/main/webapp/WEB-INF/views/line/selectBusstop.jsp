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

                        <form:form role="form" action="/lines/addBusstop/save" modelAttribute="route" method="POST">
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


<%--&lt;%&ndash;--%>
<%--Created by IntelliJ IDEA.--%>
<%--User: michal--%>
<%--Date: 04.09.18--%>
<%--Time: 10:44--%>
<%--To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--<style type="text/css">--%>
<%--.error {--%>
<%--color: red;--%>
<%--}--%>
<%--</style>--%>
<%--<title>Busstop form</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<jsp:include page="../../fragments/header.jsp"/>--%>

<%--&lt;%&ndash;@elvariable id="route" type="java"&ndash;%&gt;--%>
<%--<form:form action="/lines/addBusstop/save" modelAttribute="route" method="POST">--%>
<%--<form:hidden path="id"/>--%>

<%--<form:hidden path="orderNo"/>--%>
<%--<form:hidden path="line"/>--%>

<%--Busstop--%>
<%--<form:select path="busstop">--%>
<%--<form:option value="" label="--Select busstop--"/>--%>
<%--<form:options items="${busstops}" itemLabel="name" itemValue="id"/>--%>
<%--</form:select>--%>
<%--<form:errors path="busstop" cssClass="error"/><br>--%>

<%--<input type="submit" value="Submit">--%>
<%--</form:form>--%>

<%--<jsp:include page="../../fragments/footer.jsp"/>--%>
<%--</body>--%>
<%--</html>--%>
