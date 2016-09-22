<!DOCTYPE html>
<html>
	<head>
	<asset:stylesheet src="bootstrap.min.css"/>
		<meta name="layout" content="mylayout"/>
		<title>Add Your Feedback</title>
	</head>
	<body>
<br>
<fieldset>
<div class="container">
<font size="3">
<g:form controller="addFeedback" action="saveFeedback">
<fieldset>
<legend>Add Your Feedback</legend>
<table class="col-lg-7" align="center">
<tr><td>
<p>Course Name:      <g:textField required="true" class="form-control" name="courseName"/></p>
<p>Institute Name:   <g:textField required="true" class="form-control"  name="instituteName" /><br>
<p>Trainer Name:     <g:textField required="true" class="form-control"  name="trainerName" /><br>
<p>Course Duration:  <g:textField required="true" class="form-control"  name="courseDuration" /><br>
<p>Total Fees:       <g:textField required="true" class="form-control"  name="totalFees" /><br>
<p>Feedback:         <g:textArea required="true" class="form-control"  name="feedback" /><br>
                     <g:submitButton name="login" class="btn btn-lg btn-success btn-block" value="Add Feedback" />
</div>
    </fieldset>
</g:form>
</html>
