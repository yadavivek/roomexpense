<%--
  Created by IntelliJ IDEA.
  User: vivek
  Date: 5/11/14
  Time: 8:10 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Room Rent</title>
    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:stylesheet src="bootstrap.css"/>
    <asset:stylesheet src="style.css"/>
    <asset:javascript src="jquery.js"/>
    <asset:javascript src="bootstrap.min.js"/>
    <asset:javascript src="bootstrap.js"/>
    <g:layoutHead/>
</head>

<body>

<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            %{--<a class="navbar-brand" href="#">Room Expense</a>--}%
        <g:link controller="home" action="candidate" class="navbar-brand">Room Expense</g:link>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li>
                    <a href="#">About</a>
                </li>
                <li>
                    <a href="#">Services</a>
                </li>
                <li>
                    <a href="#">Contact</a>
                </li>
            </ul>
        <ul class="nav navbar-right navbar-nav">

            <sec:ifLoggedIn>
                <li>
                    <a href="roomexpense/j_spring_security_logout">Logout</a>
                    %{--<g:link controller="logout">Logout</g:link>--}%
                </li>
            </sec:ifLoggedIn>
            <sec:ifNotLoggedIn>
                <li>
                    <g:link controller="register">Sign Up</g:link>
                </li>
                <li>
                    <g:link controller="home" action="candidate">Login</g:link>
                </li>
            </sec:ifNotLoggedIn>



        </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>
<div style="padding-bottom: 60px"></div>

<div class="container">
    <g:layoutBody/>

    <!-- /.row -->

</div>
</body>
</html>