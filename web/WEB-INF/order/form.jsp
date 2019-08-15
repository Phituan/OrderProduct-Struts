<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 8/15/2019
  Time: 11:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>form</h1>
    <s:form action="store">
        Phone <s:textfield name="order.phone"/><br>
        Name <s:textfield name="order.name"/><br>
        Email <s:textfield name="order.email"/><br>
        NameProduct <s:textfield name="order.email"/><br>

        <s:submit value="Save"/>
    </s:form>
</body>
</html>
