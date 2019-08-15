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
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Struts2 - Example</title>
    <style type="text/css">
        .error-msg {
            color: red;
        }

        table.list {
            border: 1px solid #cbcbcb;
            border-collapse: collapse;
        }

        table.list td, th {
            border-left: 1px solid #cbcbcb;
            padding-left: 10px;
            padding-right: 10px;
        }

        table.list thead {
            background-color: #cbcbcb;
        }
    </style>
</head>
<body>
<s:form id="studentForm" class="studentForm" theme="simple">
    <div class="error-msg">
        <s:actionerror />
    </div>
    <table class="list">
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Price</th>
            <th>Discound</th>
            <th></th>
        </tr>
        </thead>
        <!-- show list student -->
        <tbody>
        <s:iterator value="productList" id="product" status="pr">
            <tr>
                <td><s:property value="#product.id" /></td>
                <td><s:property value="#student.name" /></td>
                <td><s:property value="#student.price" /></td>
                <td><s:property value="#student.discount" /></td>
                <td><s:checkbox/></td>
                <!-- save listStudents -->
                <s:hidden name="productList[%{#st.index}].id"
                          value="%{#student.id}" />
                <s:hidden name="productList[%{#st.index}].name"
                          value="%{#student.name}" />
                <s:hidden name="productList[%{#st.index}].price"
                          value="%{#student.price}" />
                <s:hidden name="productList[%{#st.index}].discount"
                          value="%{#student.discount}" />
            </tr>
        </s:iterator>
        </tbody>
    </table>
    <div class="control-btn">
        <s:submit name="submit" value="Submit"
                  onclick="this.form.action='product-submit'" />
    </div>
</s:form>
</body>
</html>
