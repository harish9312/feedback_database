<!DOCTYPE html>
<html>
	<head>
    <title>Register To FeedBack Database</title>
    <asset:stylesheet src="bootstrap.css"/>
    <asset:stylesheet src="customcss2.css"/>
    <asset:javascript src="angular.min.js"/>
    <asset:javascript src="jquery.js"/>
    <asset:javascript src="bootstrap.js"/>

<g:javascript>
function validatePasswordField(){
    x=document.myForm
    input=x.password.value
    if (input.length<8){
        alert("Password is Too Short \n It Must Contain More Than 8 Characters")
        return false
    }else {
        return true
    }
}



</g:javascript>


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
		<li><g:link controller="feedback" action="index" style="color:#FFFFFF">View Feedback</g:link></li>
<li><g:link controller="login" action="index" style="color:#FFFFFF">Update Your Feedback</g:link></li> 
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>

</div>
<g:form name="myForm" controller="register"  action="addUser">

<table align="center" width="40%">
<tr><td>
<fieldset class="newborder">
<h2 align="center"><u><i>SignUp To Feedback Database</i></u></h2>
<br>
<br>
<table align="center" class="col-lg-11">
<tr><td>Enter Your Name:</td><td><g:textField required="true" class="form-control" name="name" placeholder="Enter Your Name" value="${userInstance?.userName}"/>
</td>
</tr>
<tr><td>Enter Your Username:</td><td><g:textField required="true" class="form-control" name="userName" placeholder="Enter Your Username" value="${userInstance?.userName}"/></td></tr>


<tr><td>Enter New Password</td><td><g:field required="true" class="form-control" type="password" name="password" placeholder="Enter Your Password" value="${userInstance?.password}"/></td></tr>
<tr><td></td><td><g:submitButton onclick="return validatePasswordField()" class="btn btn-lg btn-success btn-block" name="register"  value="Register Now" /></td></tr>
</g:form>
</table>
</div>
<center>
</body>
</html>
