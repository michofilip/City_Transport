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
    <title>Busstop form</title>
</head>
<body>
<jsp:include page="../../fragments/header.jsp"/>

<%--@elvariable id="route" type="java"--%>
<form:form action="/lines/addBusstop/save" modelAttribute="route" method="POST">
    <form:hidden path="id"/>

    <form:hidden path="orderNo"/>
    <form:hidden path="line"/>

    Busstop
    <form:select path="busstop">
        <form:option value="" label="--Select busstop--"/>
        <form:options items="${busstops}" itemLabel="name" itemValue="id"/>
    </form:select>
    <form:errors path="busstop" cssClass="error"/><br>

    <input type="submit" value="Submit">
</form:form>

<jsp:include page="../../fragments/footer.jsp"/>
</body>
</html>
