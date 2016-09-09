<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="mylayout"/>

<style>
fieldset.scheduler-border {
    border: 2px groove #ddd !important;
    padding: 0 1.4em 1.4em 1.4em !important;
}

legend.scheduler-border {
    font-size: 2em !important;
    text-align: center !important;
    border:none;
width:100px;

}
</style>
<title>Login Here</title>
</head>
<br>
<body>
<h1>${msg}</h1>
<center>
<div class="container">
<g:form action="login">

<fieldset class="scheduler-border">
<legend class="scheduler-border">Login</legend> 

<table align="center" width="200">
<tr align="center">
<td>
<label for="username">Username</label>                    
<p><g:textField required="true" class="form-control" name="username" placeholder="Enter Your Username" value="${userInstance?.userName}"/></p><br>
</td></tr>
<tr align="center"><td>
<label for="Password">Password</label>                    

<p><g:field required="true" class="form-control" type="password" name="password" placeholder="Enter Your Password" value="${userInstance?.password}"/></p><br>
</td></tr>
<tr><td>
      <p><g:submitButton class="btn btn-lg btn-success btn-block" name="login"  value="Login" /><p>
</td></tr>
</g:form>
</table>
</div>
<center>
</body>
</html>
