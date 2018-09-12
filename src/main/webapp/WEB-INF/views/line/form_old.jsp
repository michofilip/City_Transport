<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: michal
  Date: 04.09.18
  Time: 10:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style type="text/css">
        .error {
            color: red;
        }
    </style>
    <title>Line form</title>
</head>
<body>
<jsp:include page="../../fragments/header.jsp"/>

<%--@elvariable id="line" type="java"--%>
<form:form action="/lines/save" modelAttribute="line" method="POST">
    <form:hidden path="id"/>

    Number
    <form:input path="number" cssErrorClass="error"/>
    <form:errors path="number" cssClass="error"/><br>

    Variant
    <form:input path="variant" cssErrorClass="error"/>
    <form:errors path="variant" cssClass="error"/><br>

    <input type="submit" value="Submit">
</form:form>

<c:if test="${edit}">

    Busstops
    <ol>
        <c:forEach var="route" items="${routes}">
            <li>

                <a href="/busstops/details/${route.busstop.id}"><c:out value="${route.busstop.name}"/></a>

                <a href="/lines/addBusstop/${line.id}/${route.orderNo}">Add before</a>

                <a href="/lines/moveUp/${route.id}">Move up</a>
                <a href="/lines/moveDown/${route.id}">Move down</a>

                <a href="/lines/removeBusstop/${route.id}">Remove</a>
            </li>
        </c:forEach>
        <li>
                <%--<a href="/lines/addBusstop/${line.id}/${busstopCount + 1}">--%>
            <a href="/lines/addBusstop/${line.id}/-1">
                Add new
            </a>
        </li>
    </ol>

</c:if>

<jsp:include page="../../fragments/footer.jsp"/>
</body>
</html>
