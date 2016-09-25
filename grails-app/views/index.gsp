<!DOCTYPE html>
<html>
	<head>
		<title>Add New Feedback</title>
    <asset:stylesheet src="bootstrap.css"/>
    <asset:stylesheet src="customcss2.css"/>

</head>




<body>
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
<g:form  controller="addFeedback" action="saveFeedback">
<fieldset class="scheduler-border">
<h2 align="center">Add Your Feedback</h2>
<table  align="center" class="col-lg-11">
<tr align="center"><td>Course Name:</td><td>      <g:textField required="true" class="form-control" name="courseName"/></td></tr>
<tr align="center"><td>Institute Name:</td><td>   <g:textField required="true" class="form-control"  name="instituteName" /></td></tr>
<tr align="center"><td>Trainer Name:</td><td>     <g:textField required="true" class="form-control"  name="trainerName" /></td></tr>
<tr align="center"><td>Course Duration:</td><td>  <g:textField required="true" class="form-control"  name="courseDuration" /></td></tr>
<tr align="center"><td>Total Fees:</td><td>       <g:textField required="true" class="form-control"  name="totalFees" /></td></tr>
<tr align="center"><td>Feedback:  </td><td>       <g:textArea required="true" class="form-control"  name="feedback" /></td><tr>                   <tr><td></td><td><g:submitButton name="login" class="btn btn-lg btn-success btn-block" value="Add Feedback" /></td></tr>
</div>
</div>
</div>
</fieldset>
</g:form>
<br><br>
</body>
</html>
