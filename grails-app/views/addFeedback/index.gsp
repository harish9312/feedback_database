<!DOCTYPE html>
<html>
	<head>
		<title>Add New Feedback</title>
    <asset:stylesheet src="bootstrap.css"/>
    <asset:stylesheet src="customcss2.css"/>
    <asset:javascript src="angular.min.js"/>
    <asset:javascript src="validation.js"/> 
 
</head>

<body  ng-app="feedbackDatabaseApp">
  <nav class="navbar navbar-default" style="background-color:#330066">
	<div class="navbar-brand" style="color:#FFFFFF">
	  Feedback Database
    </div>
<div id="navbar" class="navbar-collapse collapse">          
            
<ul class="nav navbar-nav navbar-right" >
		<li><g:link controller="feedback" action="index" style="color:#FFFFFF">View Feedback</g:link></li> 
		<li><g:link controller="addFeedback" action="index" style="color:#FFFFFF">Add Feedback</g:link></li> 
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>

<div class="custom">
<div class="container">
<font size="3">
<g:form name="feedbackForm" onsubmit="return validateInput()" controller="addFeedback" action="saveFeedback">
<fieldset class="scheduler-border">
<h2 align="center">Add Your Feedback</h2>
<table  align="center" class="col-lg-11">
<tr><td>Course Name:</td><td>      <g:textField required="true" class="form-control" name="courseName"/></td></tr>
<tr><td>Institute Name:</td><td>   <g:textField required="true" class="form-control"  name="instituteName" /></td></tr>
<tr><td>Trainer Name:</td><td>     <g:textField required="true" class="form-control"  name="trainerName" /></td></tr>
<tr><td>Course Duration:</td><td>  <g:textField required="true" class="form-control"  name="courseDuration" /></td></tr>
<tr><td>Total Fees:</td><td>       <g:textField required="true" class="form-control"  name="totalFees" /></td></tr>
<tr><td>Feedback:  </td><td>       <g:textArea required="true" class="form-control" ng-model="text" ng-trim="false" name="feedback" /><p align="right">{{1000-text.length+" Characters Left"}}</p></td><tr>                   
<tr><td></td><td><g:submitButton name="login" class="btn btn-lg btn-success btn-block" value="Add Feedback" /></td></tr>
</div>
</div>
</div>
</fieldset>
</g:form>
<br><br>
</body>
<script>
angular.module("feedbackDatabaseApp",[])
</script>
</html>
