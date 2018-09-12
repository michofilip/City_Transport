<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <title>Ride form</title>
</head>
<body>
<jsp:include page="/WEB-INF/fragments/header.jsp"/>

<%--@elvariable id="ride" type="java"--%>
<form:form action="/rides/save" modelAttribute="ride" method="POST">
    <form:hidden path="id"/>

    Routes
    <form:select path="route">
        <form:option value="" label="--Select line number--"/>
        <form:options items="${routes}" itemLabel="description" itemValue="id"/>
    </form:select>
    <form:errors path="route" cssClass="error"/><br>

    Bus
    <form:select path="bus">
        <form:option value="" label="--Select bus--"/>
        <form:options items="${buses}" itemLabel="plateNumber" itemValue="id"/>
    </form:select>
    <form:errors path="bus" cssClass="error"/><br>

    Arrival time
    <form:select path="arrivalHour">
        <form:options items="${hours}"/>
    </form:select>
    <form:select path="arrivalMinutes">
        <form:options items="${minutes}"/>
    </form:select>
    <form:errors path="arrivalTime" cssClass="error"/><br>

    <%--Start time--%>
    <%--<form:input path="startTime" cssErrorClass="error"/><br>--%>
    <%--<form:errors path="startTime" cssClass="error"/><br>--%>

    <input type="submit" value="Submit">
</form:form>

<jsp:include page="/WEB-INF/fragments/footer.jsp"/>
</body>
</html>
