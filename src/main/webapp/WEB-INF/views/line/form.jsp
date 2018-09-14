<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                Line form
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-6">

                        <form:form role="form" action="/lines/admin/save" modelAttribute="line" method="POST">
                            <form:hidden path="id"/>

                            Number
                            <form:input path="number" cssErrorClass="error"/>
                            <form:errors path="number" cssClass="error"/><br>

                            Variant
                            <form:input path="variant" cssErrorClass="error"/>
                            <form:errors path="variant" cssClass="error"/><br>

                            <input type="submit" value="Submit">
                        </form:form>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row">

        <c:if test="${edit}">
            <div class="col-lg-6">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Busstops
                    </div>
                    <div class="panel-body">
                        <ol>
                            <c:forEach var="route" items="${routes}" varStatus="varStatus">

                                <div class="panel panel-default">
                                    <li>
                                        <div class="panel-heading">

                                            <a href="/busstops/details/${route.busstop.id}"><c:out
                                                    value="${route.busstop.name}"/></a>

                                            <a href="/lines/admin/addBusstop/${line.id}/${route.orderNo}"
                                               class=" fa fa-plus">
                                                    <%--Add before--%>
                                            </a>

                                            <c:if test="${!varStatus.first}">
                                                <a href="/lines/admin/moveUp/${route.id}" class=" fa fa-arrow-up">
                                                        <%--Move up--%>
                                                </a>
                                            </c:if>

                                            <c:if test="${!varStatus.last}">
                                                <a href="/lines/admin/moveDown/${route.id}" class=" fa fa-arrow-down">
                                                        <%--Move down--%>
                                                </a>
                                            </c:if>

                                            <a href="/lines/admin/removeBusstop/${route.id}"
                                               class=" fa fa-trash-o confirm">
                                                    <%--Remove--%>
                                            </a>

                                        </div>
                                    </li>
                                </div>

                            </c:forEach>

                            <div class="panel panel-default">
                                <li>
                                    <div class="panel-heading">

                                            <%--<a href="/lines/addBusstop/${line.id}/${busstopCount + 1}">--%>
                                        <a href="/lines/admin/addBusstop/${line.id}/-1" class=" fa fa-plus">
                                                <%--Add new--%>
                                        </a>

                                    </div>
                                </li>
                            </div>
                        </ol>
                    </div>
                </div>
            </div>
        </c:if>

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
<%--<title>Line form</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<jsp:include page="../../fragments/header.jsp"/>--%>

<%--&lt;%&ndash;@elvariable id="line" type="java"&ndash;%&gt;--%>
<%--<form:form action="/lines/save" modelAttribute="line" method="POST">--%>
<%--<form:hidden path="id"/>--%>

<%--Number--%>
<%--<form:input path="number" cssErrorClass="error"/>--%>
<%--<form:errors path="number" cssClass="error"/><br>--%>

<%--Variant--%>
<%--<form:input path="variant" cssErrorClass="error"/>--%>
<%--<form:errors path="variant" cssClass="error"/><br>--%>

<%--<input type="submit" value="Submit">--%>
<%--</form:form>--%>

<%--<c:if test="${edit}">--%>

<%--Busstops--%>
<%--<ol>--%>
<%--<c:forEach var="route" items="${routes}">--%>
<%--<li>--%>

<%--<a href="/busstops/details/${route.busstop.id}"><c:out value="${route.busstop.name}"/></a>--%>

<%--<a href="/lines/addBusstop/${line.id}/${route.orderNo}">Add before</a>--%>

<%--<a href="/lines/moveUp/${route.id}">Move up</a>--%>
<%--<a href="/lines/moveDown/${route.id}">Move down</a>--%>

<%--<a href="/lines/removeBusstop/${route.id}">Remove</a>--%>
<%--</li>--%>
<%--</c:forEach>--%>
<%--<li>--%>
<%--&lt;%&ndash;<a href="/lines/addBusstop/${line.id}/${busstopCount + 1}">&ndash;%&gt;--%>
<%--<a href="/lines/addBusstop/${line.id}/-1">--%>
<%--Add new--%>
<%--</a>--%>
<%--</li>--%>
<%--</ol>--%>

<%--</c:if>--%>

<%--<jsp:include page="../../fragments/footer.jsp"/>--%>
<%--</body>--%>
<%--</html>--%>
