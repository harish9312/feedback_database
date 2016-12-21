<!DOCTYPE html>
<html>
	<head>
    <title>Login To FeedBack Database</title>
    <asset:stylesheet src="bootstrap.css"/>
    <asset:stylesheet src="customcss2.css"/>
    <asset:javascript src="angular.min.js"/>
    <asset:javascript src="jquery.js"/>
    <asset:javascript src="bootstrap.js"/>
    <style>
    body{

    }

    .loginBtn {
      box-sizing: border-box;
      position: relative;
      /* width: 13em;  - apply for fixed size */
      margin: 0.2em;
      padding: 0 15px 0 46px;
      border: none;
      text-align: left;
      line-height: 34px;
      white-space: nowrap;
      border-radius: 0.2em;
      font-size: 16px;
      color: #FFF;
    }
    .loginBtn:before {
      content: "";
      box-sizing: border-box;
      position: absolute;
      top: 0;
      left: 0;
      width: 34px;
      height: 100%;
    }
    .loginBtn:focus {
      outline: none;
    }
    .loginBtn:active {
      box-shadow: inset 0 0 0 32px rgba(0,0,0,0.1);
    }


    /* Facebook */
    .loginBtn--facebook {
      background-color: #4C69BA;
      background-image: linear-gradient(#4C69BA, #3B55A0);
      /*font-family: "Helvetica neue", Helvetica Neue, Helvetica, Arial, sans-serif;*/
      text-shadow: 0 -1px 0 #354C8C;
    }
    .loginBtn--facebook:before {
      border-right: #364e92 1px solid;
      background: url('https://s3-us-west-2.amazonaws.com/s.cdpn.io/14082/icon_facebook.png') 6px 6px no-repeat;
    }
    .loginBtn--facebook:hover,
    .loginBtn--facebook:focus {
      background-color: #5B7BD5;
      background-image: linear-gradient(#5B7BD5, #4864B1);
    }
    button{
    cursor : pointer;
    }

    .myAlert{
    font-size:20px;
    color:#FF0000;
    margin-left:60px;
    font-family:'comic sans ms';
    }

.myAlert
 {
  width:500px;
  float:left;
  border-color: #B63E5A;
  background: #E26868;
  color: #fff;
  }

    </style>
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

    <li><g:link controller="register" action="index" style="color:#FFFFFF">SignUp Here</g:link></li>
		<li><g:link controller="feedback" action="index" style="color:#FFFFFF">View Feedback</g:link></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>

</div>
<center>
	<g:if test='${flash.message}'>
			<div class="login_message">${flash.message}</div>
		</g:if>
<form action="${postUrl ?: '/login/authenticate'}" method="POST" id="loginForm" class="cssform" autocomplete="off">

<table align="center" width="50%">
<tr><td>
<fieldset class="newborder">
<h2 align="center">Login To Feedback Database</h2>
<br>
<g:if test="${params.msg!=null}"><div class="getFloat"><p class="myAlert">${params.msg}</p></div></g:if>
<br>
<table align="center" width="270px">
<tr align="center"><td><label>Username</label>
<g:textField required="true" class="form-control" name="${usernameParameter ?: 'username'}" id="username" placeholder="Enter Your Username" value="${userInstance?.userName}"/></td></tr>
<tr align="center"><td><label>Password</label>
<g:field required="true" class="form-control" type="password" name="${passwordParameter ?: 'password'}" id="password" placeholder="Enter Your Password" value="${userInstance?.password}"/>
</td></tr>
<tr align="center"><td>
<g:submitButton class="btn btn-lg btn-success btn-block" id="submit" name="login"  value="Login" />
</td></tr>
		</form>
</table>
<h6>OR</h6>
<oauth:connect provider="facebook" id="facebook-connect-link">
<button class="loginBtn loginBtn--facebook">
SignIn With Facebook
</button></oauth:connect>

</div>
<center>
</body>
</html>