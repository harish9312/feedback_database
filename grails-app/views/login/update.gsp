<!DOCTYPE html>
<html>
	<head>
    <title>Update Your Feedback</title>
    <asset:stylesheet src="bootstrap.css"/>
    <asset:stylesheet src="customcss2.css"/>
    <asset:javascript src="angular.min.js"/> 
    <asset:javascript src="jquery.js"/> 
    <asset:javascript src="bootstrap.js"/>	

<g:javascript>

function confirmDelete(){
  var x = confirm("Do You Really Want To \nDelete Your Feedback..??");
  if(x==true){
  return true;
  }
  else{
  return false;
  }
}

</g:javascript>

</head>

<body  ng-app="feedbackDatabaseApp">

<nav class="navbar navbar-default" style="background-color:#CC33CC">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
    <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a href="../" class="navbar-brand" style="color:#FFFFFF" font-size="10">
Feedback Database</a>
</div>
<div id="navbar" class="navbar-collapse collapse">          
            
<ul class="nav navbar-nav navbar-right" >
		<li><g:link controller="login" action="deleteFeedback" onclick="return confirmDelete()" style="color:#FFFFFF">Delete Your Feedback</g:link></li> 
		<li><g:link method="POST" controller="logout" action="index" style="color:#FFFFFF">Logout</g:link></li>

            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>

</div>

	
<font size="3">
<g:form  controller="login" action="updateData">
<table align="center" width="70%">
<tr><td>
<fieldset class="newborder">
<h2 align="center">Edit Your Feedback</h2>
<br>
<table  align="center" class="col-lg-11">
<tr><td>Course Name:</td><td>      <g:textField required="true"   value="${sendData.courseName}"  class="form-control"  name="courseName"/></td></tr>
<tr><td>Institute Name:</td><td>   <g:textField required="true" value="${sendData.instituteName}"  class="form-control"  name="instituteName" /></td></tr>
<tr><td>Trainer Name:</td><td>     <g:textField required="true" value="${sendData.trainerName}" class="form-control"  name="trainerName" /></td></tr>
<tr><td>Course Duration:</td><td>  <g:textField required="true"  value="${sendData.courseDuration}" class="form-control"  name="courseDuration" /></td></tr>
<tr><td>Total Fees:</td><td>       <g:textField required="true"  class="form-control" value="${sendData.totalFees}" name="totalFees" /></td></tr>
<tr><td>Feedback:</td><td>        <g:textArea required="true" class="form-control" value="${sendData.feedback}" name="fb" /><br>
</td><tr>                   
<tr><td></td><td><g:submitButton name="login" class="btn btn-lg btn-success btn-block" value="Update Feedback" /></td></tr>
</div>
</div>
</div>
</fieldset>
</td></tr>
</table>
</g:form>
<br><br
</body>
<script>
angular.module("feedbackDatabaseApp",[])
</script>
</html>



























</html>
