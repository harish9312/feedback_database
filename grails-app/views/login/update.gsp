<!DOCTYPE html>
<html>
	<head>
	<asset:stylesheet src="bootstrap.min.css"/>
		<meta name="layout" content="mylayout"/>
		<title>Students</title>
	</head>
	<body>
<br>
<fieldset>
<div class="container">
<font size="3">
<g:form controller="feedback" action="index">
<fieldset>
<legend>Upadte Your Feedback</legend>
<table class="col-lg-7" align="center">
<tr><td>
<p>Course Name:      <g:textField required="true" class="form-control" value="${sendData.courseName}" name="cn"/></p>
<p>Institute Name:   <g:textField required="true" class="form-control" value="${sendData.instituteName}" name="inm" /><br>
<p>Trainer Name:     <g:textField required="true" class="form-control" value="${sendData.trainerName}" name="tn" /><br>
<p>Course Duration:  <g:textField required="true" class="form-control" value="${sendData.courseDuration}" name="dur" /><br>
<p>Total Fees:       <g:textField required="true" class="form-control" value="${sendData.totalFees}" name="tf" /><br>
<p>Feedback:         <g:textArea required="true" class="form-control" value="${sendData.feedback}" name="fb" /><br>
                     <g:submitButton name="login" class="btn btn-lg btn-success btn-block" value="Update" />
</div>
    </fieldset>
</g:form>
</html>
