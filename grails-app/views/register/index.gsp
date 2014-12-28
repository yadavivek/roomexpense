<%--
  Created by IntelliJ IDEA.
  User: vivek
  Date: 5/11/14
  Time: 8:13 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Register</title>
    <meta name="layout" content="bootstrap">

</head>

<body>
<div>
    <h3>Register</h3>
</div>

<g:if test="${registerCO && registerCO.hasErrors()}">
    <div class="error-messages errors">
        <g:renderErrors bean="${registerCO}" as="list"/>
    </div>
</g:if>
<g:if test="${user && user.hasErrors()}">
    <div class="error-messages errors">
        <g:renderErrors bean="${user}" as="list"/>
    </div>
</g:if>
<g:form class="form-horizontal" role="form" action="save">
    <div class="form-group form-group-lg">
        <label class="col-sm-2 control-label" for="username">User Name</label>
        <div class="col-sm-4">
            %{--<input class="form-control" type="text" id="formGroupInputLarge" placeholder="Large input">--}%
            <g:textField name="username" class="form-control" placeholder="User Name" value="${registerCO?.username}"/>
        </div>
    </div>
    <div class="form-group form-group-lg">
        <label class="col-sm-2 control-label" for="password">Password</label>
        <div class="col-sm-4">
            <g:passwordField name="password" class="form-control" placeholder="Password" value="${registerCO?.password}"/>
        </div>
    </div>

    <div class="form-group form-group-lg">
        <label class="col-sm-2 control-label" for="confirmPassword">Confirm Password</label>
        <div class="col-sm-4">
            <g:passwordField name="confirmPassword" class="form-control" placeholder="Confirm Password" value="${registerCO?.confirmPassword}"/>
        </div>
    </div>
    <div class="form-group form-group-lg">
        <label class="col-sm-2 control-label" for="email">Email</label>
        <div class="col-sm-4">
            <g:textField name="email" class="form-control" placeholder="Email" value="${registerCO?.email}"/>
        </div>
    </div>
    <div class="form-group form-group-lg">
        <label class="col-sm-2 control-label" for="firstName">First Name</label>
        <div class="col-sm-4">
            <g:textField name="firstName" class="form-control" placeholder="First Name" value="${registerCO?.firstName}"/>
        </div>
    </div>
    <div class="form-group form-group-lg">
        <label class="col-sm-2 control-label" for="lastName">Last Name</label>
        <div class="col-sm-4">
            <g:textField name="lastName" class="form-control" placeholder="Last Name" value="${registerCO?.lastName}"/>
        </div>
    </div>

    %{--<button type="submit" class="btn btn-default">Submit</button>--}%
    <g:submitButton name="Submit" class="btn btn-primary"/>
</g:form>

</body>
</html>