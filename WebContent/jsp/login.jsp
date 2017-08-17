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
                    <div class="panel-heading">
                      <span class="glyphicon glyphicon-lock"></span> <fmt:message key="user.login"/>
                    </div>
                    <div class="panel-body">
                      <form class="form-horizontal" role="form" action="/Roulette/Controller" method="post">
                        <div class="form-group">
                            <label for="login" class="col-sm-3 control-label"><fmt:message key="user.login"/></label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="login" name="login" placeholder="<fmt:message key="user.login"/>" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="password" class="col-sm-3 control-label"><fmt:message key="user.password"/></label>
                            <div class="col-sm-9">
                                <input type="password" class="form-control" id="password" name="pass" placeholder="<fmt:message key="user.password"/>" required>
                            </div>
                        </div>
                        <input type="hidden" name="command" value="login">
                        <div class="form-group last">
                            <div class="col-sm-offset-3 col-sm-9">
                                <button type="submit" class="btn btn-success btn-sm"><fmt:message key="user.signin"/></button>
                                <button type="reset" class="btn btn-default btn-sm"><fmt:message key="user.reset"/></button>
                            </div>
                        </div>
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
  </body>
</html>