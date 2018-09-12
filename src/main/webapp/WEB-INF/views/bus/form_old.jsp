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
    <title>Bus form</title>
</head>
<body>
<jsp:include page="/WEB-INF/fragments/header.jsp"/>

<%--@elvariable id="bus" type="java"--%>
<form:form action="/buses/save" modelAttribute="bus" method="POST">
    <form:hidden path="id"/>

    Plate number
    <form:input path="plateNumber" cssErrorClass="error"/>
    <form:errors path="plateNumber" cssClass="error"/><br>

    <input type="submit" value="Submit">
</form:form>

<jsp:include page="/WEB-INF/fragments/footer.jsp"/>
</body>
</html>
