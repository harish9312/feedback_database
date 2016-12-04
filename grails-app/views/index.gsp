<html>
	<head>
    <title>Add New Feedback</title>
    <asset:stylesheet src="bootstrap.css"/>
    <asset:stylesheet src="customcss2.css"/>
    <asset:javascript src="angular.min.js"/> 
    <asset:javascript src="jquery.js"/> 
    <asset:javascript src="bootstrap.js"/>	
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
            <a class="navbar-brand" style="color:#FFFFFF" font-size="10" href="#">
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
