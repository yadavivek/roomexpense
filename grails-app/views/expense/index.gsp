<%--
  Created by IntelliJ IDEA.
  User: vivek
  Date: 7/11/14
  Time: 10:49 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="bootstrap">
    <title></title>
</head>

<body>
<div class="border">
    <dl class="dl-horizontal">
        <dt>Name</dt>
        <dd>${personalDetail?.firstName} ${personalDetail?.lastName}</dd>

        <dt>Total Expense</dt>
        <dd> <exp:totalExpense personalDetail="${personalDetail}"/>  </dd>

        <dt></dt>
        <dd>   </dd>
    </dl>
</div>
</body>
</html>