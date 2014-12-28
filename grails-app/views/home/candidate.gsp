<%--
  Created by IntelliJ IDEA.
  User: vivek
  Date: 6/11/14
  Time: 11:46 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="bootstrap">
</head>

<body>
<h3>Welcome ${user?.personalDetail?.firstName} ${user?.personalDetail?.lastName}</h3>

<table class="table table-bordered">
    <thead>
    <tr>
        <th>
            Name
        </th>
        <th>
            Expense Money
        </th>
        <th>
            Action
        </th>
    </tr>
    </thead>
    <tbody>
    <g:each in="${partners}" var="partner">
        <tr>
            <td>
                %{--<g:link controller="expense"> ${partner?.firstName} ${partner?.lastName}</g:link>--}%
                ${partner?.firstName} ${partner?.lastName}
            </td>
            <td>
                <exp:totalExpense personalDetail="${partner}"/>
            </td>
            <td>
                <g:link controller="expense" params="[personalDetailId: partner.id]">Add Expense</g:link>
            </td>
        </tr>
    </g:each>

    </tbody>
</table>
</body>
</html>