<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="../header.jsp"/>

<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Buses</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Busstop form
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-6">

                            <form:form role="form" action="/busstops/save" modelAttribute="busstop" method="POST">
                                <form:hidden path="id"/>

                                <div class="form-group">
                                    Name
                                    <form:input path="name" cssErrorClass="error"/>
                                    <form:errors path="name" cssClass="error"/><br>
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
</div>

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
<%--<jsp:include page="/WEB-INF/fragments/header.jsp"/>--%>

<%--&lt;%&ndash;@elvariable id="busstop" type="java"&ndash;%&gt;--%>
<%--<form:form action="/busstops/save" modelAttribute="busstop" method="POST">--%>
    <%--<form:hidden path="id"/>--%>

    <%--Name--%>
    <%--<form:input path="name" cssErrorClass="error"/>--%>
    <%--<form:errors path="name" cssClass="error"/><br>--%>

    <%--<input type="submit" value="Submit">--%>
<%--</form:form>--%>

<%--<jsp:include page="/WEB-INF/fragments/footer.jsp"/>--%>
<%--</body>--%>
<%--</html>--%>
