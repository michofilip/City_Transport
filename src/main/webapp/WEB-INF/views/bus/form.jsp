<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="../header.jsp"/>

<%--<div id="page-wrapper">--%>
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
                Bus details
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-6">

                        <form:form role="form" action="/buses/admin/save" modelAttribute="bus" method="POST">
                            <form:hidden path="id"/>

                            <div class="form-group">
                                Plate number
                                <form:input path="plateNumber" cssErrorClass="error"/>
                                <form:errors path="plateNumber" cssClass="error"/><br>
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
<%--
  Created by IntelliJ IDEA.
  User: michal
  Date: 04.09.18
  Time: 10:44
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--<style type="text/css">--%>
<%--.error {--%>
<%--color: red;--%>
<%--}--%>
<%--</style>--%>
<%--<title>Bus form</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<jsp:include page="/WEB-INF/fragments/header.jsp"/>--%>

<%--&lt;%&ndash;@elvariable id="bus" type="java"&ndash;%&gt;--%>
<%--&lt;%&ndash;<form:form action="/buses/save" modelAttribute="bus" method="POST">&ndash;%&gt;--%>
<%--&lt;%&ndash;<form:hidden path="id"/>&ndash;%&gt;--%>

<%--&lt;%&ndash;Plate number&ndash;%&gt;--%>
<%--&lt;%&ndash;<form:input path="plateNumber" cssErrorClass="error"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;<form:errors path="plateNumber" cssClass="error"/><br>&ndash;%&gt;--%>

<%--&lt;%&ndash;<input type="submit" value="Submit">&ndash;%&gt;--%>
<%--&lt;%&ndash;</form:form>&ndash;%&gt;--%>

<%--<jsp:include page="/WEB-INF/fragments/footer.jsp"/>--%>
<%--</body>--%>
<%--</html>--%>
