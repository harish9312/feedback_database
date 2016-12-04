<!DOCTYPE html>
<html>
	<head>
    <title>Login To FeedBack Database</title>
    <asset:stylesheet src="bootstrap.css"/>
    <asset:stylesheet src="customcss2.css"/>
    <asset:javascript src="angular.min.js"/>
    <asset:javascript src="jquery.js"/>
    <asset:javascript src="bootstrap.js"/>
</head>

<body  ng-app="feedbackDatabaseApp">

<nav class="navbar navbar-default" style="background-color:#330066">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
    <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" style="color:#FFFFFF" font-size="10">
Feedback Database</a>
</div>
<div id="navbar" class="navbar-collapse collapse">

<ul class="nav navbar-nav navbar-right" >

    <li><g:link controller="register" action="index" style="color:#FFFFFF">SignUp Here</g:link></li>        
		<li><g:link controller="feedback" action="index" style="color:#FFFFFF">View Feedback</g:link></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>

</div>
<g:form action="login">

<table align="center" width="40%">
<tr><td>
<fieldset class="newborder">
<h2 align="center"><u><i>Login To Feedback Database</i></u></h2>
<br>
<br>
<table align="center" class="col-lg-11">
<tr><td>Username:</td><td><g:textField required="true" class="form-control" name="username" placeholder="Enter Your Username" value="${userInstance?.userName}"/></td></tr>
<tr><td>Password</td><td><g:field required="true" class="form-control" type="password" name="password" placeholder="Enter Your Password" value="${userInstance?.password}"/></td></tr>
<tr><td></td><td><g:submitButton class="btn btn-lg btn-success btn-block" name="login"  value="Login" /> </td></tr>


</g:form>
</table>
</div>
<center>
</body>
</html>
