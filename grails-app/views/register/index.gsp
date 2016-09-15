<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="mylayout"/>

<style>
fieldset.scheduler-border {
    border: 5px groove #ddd !important;
    padding: 0 1.0em 0.4em 23.0em !important;
}

legend.scheduler-border {
    font-size: 2em !important;
    text-align: center !important;
    border:none;
width:300px;

}
</style>
<title>New User Register Here</title>
</head>
<br>
<body>
<br>
<div class="container">
<g:form action="addUser">

<fieldset class="scheduler-border">
<legend class="scheduler-border">New User Registration</legend> 

<table width="400">
<tr align="right">
<td>
<p>Please Enter Your Name&nbsp; </p>
</td>
<td>
<br>                    
<g:textField required="true" class="form-control" name="name" placeholder="Enter Your Name"/></p><br>
</td>
</tr>
<tr align="right">
<td>
<p>Please Enter Your Username&nbsp; </p>
</td>
<td>
<br>                    
<g:textField required="true" class="form-control" name="username" placeholder="Enter New Username"/></p><br>
</td>
</tr>
<tr align="right">
<td>
<p>Please Enter Your Password&nbsp; </p>
</td>
<td>
<br>                    
<g:textField required="true" class="form-control" name="password" placeholder="Enter New Password"/></p><br>
</td>
</tr>
</table>
<table algn="left" width="400">
<tr align="left">
<td>
<p><g:submitButton class="btn btn-lg btn-danger btn-block" name="register"  value="Register Now" /><p>
</td>
</tr>
</g:form>
</table>
</div>
<center>
</body>
</html>
