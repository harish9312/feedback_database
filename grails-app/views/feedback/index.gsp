<!DOCTYPE html>
<html>
	<head>
<meta name="layout" content="mylayout"/>
			<title>Feedbacks</title>
	</head>
	<body>

<div class="container">
<br>

<br>
<font face="Comic Sans MS">
<table class="table table-hover" width="1000" align="center">
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
	</body>
</html>