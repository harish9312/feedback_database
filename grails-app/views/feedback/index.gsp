<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="mylayout">
<asset:stylesheet src="customcss1.css"/>
<asset:stylesheet src="bootstrap.css"/>
<style>
</style>


<title>Feedbacks</title>
</head>


	<body>
<nav class="navbar navbar-default" style="background-color:#330066">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
    <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" style="color:#FFFFFF" href="#"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>
Feedback Database</a>
</div>
<div id="navbar" class="navbar-collapse collapse">          
            
<ul class="nav navbar-nav navbar-right" >
		<li><g:link controller="feedback" action="index" style="color:#FFFFFF">View Feedback</g:link></li> 
		<li><g:link controller="addFeedback" action="index" style="color:#FFFFFF">Add Feedback</g:link></li> 
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>

<div class="container">
<table class="newcorners table table-hover table-responsive" align="center">
<tr class="bg-success" align="center">
<th>Course Name</th>
<th>Institute Name</th>
<th>Trainer Name</th>
<th>Duration</th>
<th>Total Fees</th>
<th>Feedback</th>
</tr>
</thead>
<g:each in="${feedbacks}" var="fb" status="i">
<tbody>
<tr class="table table-hover">
<td>${fb.courseName}</td>
<td>${fb.instituteName}</td>
<td>${fb.trainerName}</td>
<td>${fb.courseDuration}</td>
<td>${fb.totalFees}</td>
<td>${fb.feedback}</td>
</tr>
</tbody>
</g:each>
</table>
</fieldset>

</body>
</html>
