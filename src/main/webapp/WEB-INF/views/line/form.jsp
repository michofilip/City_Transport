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