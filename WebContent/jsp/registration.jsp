<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="by.epam.roulette.resource.text" />
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	    <meta charset="utf-8">  
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<link rel="stylesheet" type="text/css" href="../css/login.css">
	</head>
  <body>
    <div class="container">
      <nav class="navbar navbar-inverse" role="navigation">
        <div class="container">
          <div class="navbar-header">
            <a class="navbar-brand" href="regorlogin.html"><fmt:message key="header.europeanroulette"/></a>
          </div>
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-9">
            <ul class="nav navbar-nav">
              <li class="active"><a href="regorlogin.html">Home</a></li>
              <li><a href="#"><fmt:message key="header.strategyofgame"/></a></li>
              <li><a href="#"><fmt:message key="header.rules"/></a></li>
              <li><a href="registration.html"><fmt:message key="user.registration"/></a></li>
              <li><a href="login.html"><fmt:message key="user.login"/></a></li>
              <li>
              	<div style="margin:7px auto">
             	 <form method="post">
		            <select select class="form-control" id="language" name="language" onchange="submit()">
		            	<option disabled selected="selected"><fmt:message key="language.lang"/></option>
		                <option value="en" ${language == 'en' ? 'selected' : ''}><fmt:message key="language.english"/></option>
		                <option value="ru" ${language == 'ru' ? 'selected' : ''}><fmt:message key="language.russian"/></option>
		            </select>
		            </form>	
              		</div>
       			 
   			 </li>
            </ul>
          </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
      </nav>

      <div class="inform">
      	<div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-7">
                    <div class="panel panel-default">
                        <div class="panel-heading"><span class="glyphicon glyphicon-registration-mark"></span> Registration</div>
                        <div class="panel-body">
                            <form class="form-horizontal" role="form" action="/Roulette/Controller" method="post">
                              <div class="form-group">
                                  <label for="name" class="col-sm-3 control-label"><fmt:message key="user.name"/></label>
                                  <div class="col-sm-9">
                                      <input type="text" class="form-control" id="name" name="name" placeholder=<fmt:message key="user.name"/> required>
                                  </div>
                              </div>
                              <div class="form-group">
                                  <label for="login" class="col-sm-3 control-label"><fmt:message key="user.login"/></label>
                                  <div class="col-sm-9">
                                      <input type="text" class="form-control" name="login" id="login" placeholder=<fmt:message key="user.login"/> required>
                                  </div>
                              </div>
                              <div class="form-group">
                                  <label for="password1" class="col-sm-3 control-label"><fmt:message key="user.password"/></label>
                                  <div class="col-sm-9">
                                      <input type="password" class="form-control" name="password1" id="password1" placeholder=<fmt:message key="user.password"/> required>
                                  </div>
                              </div>
                              <div class="form-group">
                                  <label for="password2" class="col-sm-3 control-label"><fmt:message key="user.password"/></label>
                                  <div class="col-sm-9">
                                      <input type="password" class="form-control" name="password2" id="password2" placeholder=<fmt:message key="user.password"/> required>
                                  </div>
                              </div>
                              <div class="form-group">
                                  <label for="email" class="col-sm-3 control-label"><fmt:message key="user.email"/></label>
                                  <div class="col-sm-9">
                                      <input type="email" class="form-control" name="mail" id="email" placeholder=<fmt:message key="user.email"/> pattern="^[-._a-z0-9]+@(?:[a-z0-9][-a-z0-9]+\.)+[a-z]{2,6}$" required>
                                  </div>
                              </div>

                              <div class="form-group last">
                                  <div class="col-sm-offset-3 col-sm-9">
                                      <button type="submit" class="btn btn-success btn-sm"><fmt:message key="user.register"/></button>
                                      <button type="reset" class="btn btn-default btn-sm"><fmt:message key="user.reset"/></button>
                                  </div>
                              </div>
                              <input type="hidden" name="command" value="registration">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      </div>
      
      <footer class="footer">
      <div class="container">
        <span>copyright 2017. Roulette Designe inc. All rights reserved</span>
      </div>
    </footer>
    </div>   
    <div class="clearfix"></div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script type="text/javascript">
      function validateForm() {
        var checkPass1 = document.forms["myForm"]["password1"].value;
        var checkPass2 = document.forms["myForm"]["password2"].value;
        if (checkPass1!=checkPass2) {
          alert("passwords don't match");
          return false;
        }
      }
      
      function checkfile(sender) {
   	    var validExts = new Array(".jpeg", ".png");
   	    var fileExt = sender.value;
   	    fileExt = fileExt.substring(fileExt.lastIndexOf('.'));
   	    if (validExts.indexOf(fileExt) < 0) {
   	      alert("Invalid file selected, valid files are of " +
   	               validExts.toString() + " types.");
   	      return false;
   	    }
   	    else return true;
	  }
    </script>
  </body>
</html>