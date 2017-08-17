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
    <link rel="stylesheet" href="../css/login.css">
    <link rel="stylesheet" href="../css/game/roulette.css">
    <link rel="stylesheet" href="../css/game/table.css">
    <link rel="stylesheet" href="../css/game/chips.css">
    <link rel="stylesheet" href="../css/game/global.css">
    <style type="text/css">
    	.allinform3{
    		height: 70px;
    	}
    	#langid{
    		margin-top: 7px;
    		
    	}
    	.selectlang{
    		margin-top: 8px;
    	}
    	#userinfo{
    		height: 100%;
    		text-align: center;
    	}
    	#userinfo2{
    		height: 100%;
    		text-align: center;
    	}
    	.textuser{
    		margin-top: 30px;
    	}
    	.roulette-wrapper{
    		height: 500px;
    	}
    
    </style>
    
    
    
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
				<div class="sele">
             	 	<form method="post" class="selectlang">
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
        <div class="inform" style="background-image: url(../images/sukno.jpg); background-size: 100%;">
            <div class="container">
            <div class="allinform3">
                        		<div class="col-md-3" id="userinfo">
                        			<h3 class="textuser">${user.name}</h3> 
                        			<h5><br>money: ${user.money}$</h5>
                        			<h5 id="resultbet"></h5>
                        		</div>
                        		<div class="col-md-3" id="userinfo2">
                        			<h3 class="textuser">${iswin}</h3> 
                        			<h5><br>${winamaunt}</h5>
                        		</div>
                        		
                        	</div>
                        	
                <div class="row">
                    <div class="roulette-wrapper">
                        <div class="container">
                            <div class="desk" style="background-image: url(../images/table2.png); background-size: 100% 100%;">
                                <div class="roulette-wheel">
                                    <div class="spinner">
                                        <div class="ball"><span></span></div>
                                        <div class="platebg"></div>
                                        <div class="platetop"></div>
                                        <div id="toppart" class="topnodebox">
                                            <div class="silvernode"></div>
                                            <div class="topnode silverbg"></div>
                                            <span class="top silverbg"></span>
                                            <span class="right silverbg"></span>
                                            <span class="down silverbg"></span>
                                            <span class="left silverbg"></span>
                                        </div>
                                        <div id="rcircle" class="pieContainer">
                                            <div class="pieBackground"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="roulette-table">
                                    <div class="chips">
                                        <div class="pokerchip iso">1</div>
                                        <div class="pokerchip iso red">5</div>
                                        <div class="pokerchip iso yellow">10</div>
                                        <div class="pokerchip iso green">25</div>
                                        <div class="pokerchip iso blue">50</div>
                                        <div class="pokerchip iso black">100</div>
                                    </div>
                                    <div class="roulette">
                                        <table>
                                            <tr class="nums">
                                                <td class="num green zero" rowspan="3"><span>0</span></td>
                                                <td class="num red"><span>3</span></td>
                                                <td class="num black"><span>6</span></td>
                                                <td class="num red"><span>9</span></td>
                                                <td class="num red"><span>12</span></td>
                                                <td class="num black"><span>15</span></td>
                                                <td class="num red"><span>18</span></td>
                                                <td class="num red"><span>21</span></td>
                                                <td class="num black"><span>24</span></td>
                                                <td class="num red"><span>27</span></td>
                                                <td class="num red"><span>30</span></td>
                                                <td class="num black"><span>33</span></td>
                                                <td class="num red"><span>36</span></td>
                                                <td class="sector" data-sector="1"><span class="vt">2 to 1</span></td>
                                            </tr>
                                            <tr class="nums">
                                                <td class="hidden"></td>
                                                <td class="num black"><span>2</span></td>
                                                <td class="num red"><span>5</span></td>
                                                <td class="num black"><span>8</span></td>
                                                <td class="num black"><span>11</span></td>
                                                <td class="num red"><span>14</span></td>
                                                <td class="num black"><span>17</span></td>
                                                <td class="num black"><span>20</span></td>
                                                <td class="num red"><span>23</span></td>
                                                <td class="num black"><span>26</span></td>
                                                <td class="num black"><span>29</span></td>
                                                <td class="num red"><span>32</span></td>
                                                <td class="num black"><span>35</span></td>
                                                <td class="sector" data-sector="2"><span class="vt">2 to 1</span></td>
                                            </tr>
                                            <tr class="nums">
                                                <td class="hidden"></td>
                                                <td class="num red"><span>1</span></td>
                                                <td class="num black"><span>4</span></td>
                                                <td class="num red"><span>7</span></td>
                                                <td class="num black"><span>10</span></td>
                                                <td class="num black"><span>13</span></td>
                                                <td class="num red"><span>16</span></td>
                                                <td class="num red"><span>19</span></td>
                                                <td class="num black"><span>22</span></td>
                                                <td class="num red"><span>25</span></td>
                                                <td class="num black"><span>28</span></td>
                                                <td class="num black"><span>31</span></td>
                                                <td class="num red"><span>34</span></td>
                                                <td class="sector" data-sector="3"><span class="vt">2 to 1</span></td>
                                            </tr>
                                            <tr>
                                                <td class="empty"></td>
                                                <td colspan="4" class="sector" data-sector="4">1st 12</td>
                                                <td colspan="4" class="sector" data-sector="5">2nd 12</td>
                                                <td colspan="4" class="sector" data-sector="6">3rd 12</td>
                                                <td class="empty"></td>
                                            </tr>
                                            <tr>
                                                <td class="empty"></td>
                                                <td colspan="2" class="sector" data-sector="7">1 to 18</td>
                                                <td colspan="2" class="sector" data-sector="8">EVEN</td>
                                                <td colspan="2" class="sector red" data-sector="9">RED</td>
                                                <td colspan="2" class="sector black" data-sector="10">BLACK</td>
                                                <td colspan="2" class="sector" data-sector="11">ODD</td>
                                                <td colspan="2" class="sector" data-sector="12">19 to 36</td>
                                                <td class="empty"></td>
                                            </tr>
                                        </table>
                                        <div class="controlls">
                                            <div class="table-btn btn-zero" data-num="0"></div>
                                            <!-- col6 -->
                                            <div class="col1">
                                                <div class="row1">
                                                    <div class="table-btn v rm cv" data-num="0,3"></div>
                                                    <div class="table-btn m rm cm" data-num="3"></div>
                                                </div>
                                                <div class="row2">
                                                    <div class="table-btn c rh cv" data-num="0,2,3"></div>
                                                    <div class="table-btn v rm cv" data-num="0,2"></div>
                                                    <div class="table-btn h rh cm" data-num="2,3"></div>
                                                    <div class="table-btn m rm cm" data-num="2"></div>
                                                </div>
                                                <div class="row3">
                                                    <div class="table-btn c rh cv" data-num="0,1,2"></div>
                                                    <div class="table-btn v rm cv" data-num="0,1"></div>
                                                    <div class="table-btn c rb cv" data-num="0,1,2,3"></div>
                                                    <div class="table-btn h rh cm" data-num="1,2"></div>
                                                    <div class="table-btn m rm cm" data-num="1"></div>
                                                    <div class="table-btn h rb cm" data-num="1,2,3"></div>
                                                </div>
                                                <div class="row4">
                                                    <div class="table-btn ms4 rm cm" data-type="sector" data-sector="4" data-num="1,2,3,4,5,6,7,8,9,10,11,12"></div>
                                                </div>
                                                <div class="row5">
                                                    <div class="table-btn ms2 rm cm" data-type="sector" data-sector="7" data-num="1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18"></div>
                                                </div>
                                            </div>
                                            <!-- col2 -->
                                            <div class="col2">
                                                <div class="row1">
                                                    <div class="table-btn v rm cv" data-num="3,6"></div>
                                                    <div class="table-btn m rm cm" data-num="6"></div>
                                                </div>
                                                <div class="row2">
                                                    <div class="table-btn c rh cv" data-num="2,3,5,6"></div>
                                                    <div class="table-btn v rm cv" data-num="2,5"></div>
                                                    <div class="table-btn h rh cm" data-num="5,6"></div>
                                                    <div class="table-btn m rm cm" data-num="5"></div>
                                                </div>
                                                <div class="row3">
                                                    <div class="table-btn c rh cv" data-num="1,2,4,5"></div>
                                                    <div class="table-btn v rm cv" data-num="1,4"></div>
                                                    <div class="table-btn c rb cv" data-num="1,2,3,4,5,6"></div>
                                                    <div class="table-btn h rh cm" data-num="4,5"></div>
                                                    <div class="table-btn m rm cm" data-num="4"></div>
                                                    <div class="table-btn h rb cm" data-num="4,5,6"></div>
                                                </div>
                                            </div>
                                            <!-- col3 -->
                                            <div class="col3">
                                                <div class="row1">
                                                    <div class="table-btn v rm cv" data-num="6,9"></div>
                                                    <div class="table-btn m rm cm" data-num="9"></div>
                                                </div>
                                                <div class="row2">
                                                    <div class="table-btn c rh cv" data-num="5,6,8,9"></div>
                                                    <div class="table-btn v rm cv" data-num="5,8"></div>
                                                    <div class="table-btn h rh cm" data-num="8,9"></div>
                                                    <div class="table-btn m rm cm" data-num="8"></div>
                                                </div>
                                                <div class="row3">
                                                    <div class="table-btn c rh cv" data-num="4,5,7,8"></div>
                                                    <div class="table-btn v rm cv" data-num="4,7"></div>
                                                    <div class="table-btn c rb cv" data-num="4,5,6,7,8,9"></div>
                                                    <div class="table-btn h rh cm" data-num="7,8"></div>
                                                    <div class="table-btn m rm cm" data-num="7"></div>
                                                    <div class="table-btn h rb cm" data-num="7,8,9"></div>
                                                </div>
                                                <div class="row5">
                                                    <div class="table-btn ms2 rm cm" data-type="sector" data-sector="8" data-num="1,3,5,7,9,11,13,15,17,19,21,23,25,27,29,31,33,35"></div>
                                                </div>
                                            </div>
                                            <!-- col4 -->
                                            <div class="col4">
                                                <div class="row1">
                                                    <div class="table-btn v rm cv" data-num="9,12"></div>
                                                    <div class="table-btn m rm cm" data-num="12"></div>
                                                </div>
                                                <div class="row2">
                                                    <div class="table-btn c rh cv" data-num="8,9,11,12"></div>
                                                    <div class="table-btn v rm cv" data-num="8,11"></div>
                                                    <div class="table-btn h rh cm" data-num="11,12"></div>
                                                    <div class="table-btn m rm cm" data-num="11"></div>
                                                </div>
                                                <div class="row3">
                                                    <div class="table-btn c rh cv" data-num="7,8,10,11"></div>
                                                    <div class="table-btn v rm cv" data-num="7,10"></div>
                                                    <div class="table-btn c rb cv" data-num="7,8,9,10,11,12"></div>
                                                    <div class="table-btn h rh cm" data-num="10,11"></div>
                                                    <div class="table-btn m rm cm" data-num="10"></div>
                                                    <div class="table-btn h rb cm" data-num="10,11,12"></div>
                                                </div>
                                            </div>
                                            <!-- col5 -->
                                            <div class="col5">
                                                <div class="row1">
                                                    <div class="table-btn v rm cv" data-num="12,15"></div>
                                                    <div class="table-btn m rm cm" data-num="15"></div>
                                                </div>
                                                <div class="row2">
                                                    <div class="table-btn c rh cv" data-num="11,12,14,15"></div>
                                                    <div class="table-btn v rm cv" data-num="11,14"></div>
                                                    <div class="table-btn h rh cm" data-num="14,15"></div>
                                                    <div class="table-btn m rm cm" data-num="14"></div>
                                                </div>
                                                <div class="row3">
                                                    <div class="table-btn c rh cv" data-num="10,11,13,14"></div>
                                                    <div class="table-btn v rm cv" data-num="10,13"></div>
                                                    <div class="table-btn c rb cv" data-num="10,11,12,13,14,15"></div>
                                                    <div class="table-btn h rh cm" data-num="13,14"></div>
                                                    <div class="table-btn m rm cm" data-num="13"></div>
                                                    <div class="table-btn h rb cm" data-num="13,14,15"></div>
                                                </div>
                                                <div class="row4">
                                                    <div class="table-btn ms4 rm cm" data-type="sector" data-sector="5" data-num="13,14,15,16,17,18,19,20,21,22,23,24"></div>
                                                </div>
                                                <div class="row5">
                                                    <div class="table-btn ms2 rm cm" data-type="sector" data-sector="9" data-num="1,3,5,7,9,12,14,16,18,19,21,23,25,27,30,32,34,36"></div>
                                                </div>
                                            </div>
                                            <!-- col6 -->
                                            <div class="col6">
                                                <div class="row1">
                                                    <div class="table-btn v rm cv" data-num="15,18"></div>
                                                    <div class="table-btn m rm cm" data-num="18"></div>
                                                </div>
                                                <div class="row2">
                                                    <div class="table-btn c rh cv" data-num="14,15,17,18"></div>
                                                    <div class="table-btn v rm cv" data-num="14,17"></div>
                                                    <div class="table-btn h rh cm" data-num="17,18"></div>
                                                    <div class="table-btn m rm cm" data-num="17"></div>
                                                </div>
                                                <div class="row3">
                                                    <div class="table-btn c rh cv" data-num="13,14,16,17"></div>
                                                    <div class="table-btn v rm cv" data-num="13,16"></div>
                                                    <div class="table-btn c rb cv" data-num="13,14,15,16,17,18"></div>
                                                    <div class="table-btn h rh cm" data-num="16,17"></div>
                                                    <div class="table-btn m rm cm" data-num="16"></div>
                                                    <div class="table-btn h rb cm" data-num="16,17,18"></div>
                                                </div>
                                            </div>
                                            <!-- col7 -->
                                            <div class="col7">
                                                <div class="row1">
                                                    <div class="table-btn v rm cv" data-num="18,21"></div>
                                                    <div class="table-btn m rm cm" data-num="21"></div>
                                                </div>
                                                <div class="row2">
                                                    <div class="table-btn c rh cv" data-num="17,18,20,21"></div>
                                                    <div class="table-btn v rm cv" data-num="17,20"></div>
                                                    <div class="table-btn h rh cm" data-num="20,21"></div>
                                                    <div class="table-btn m rm cm" data-num="20"></div>
                                                </div>
                                                <div class="row3">
                                                    <div class="table-btn c rh cv" data-num="16,17,19,20"></div>
                                                    <div class="table-btn v rm cv" data-num="16,19"></div>
                                                    <div class="table-btn c rb cv" data-num="16,17,18,19,20,21"></div>
                                                    <div class="table-btn h rh cm" data-num="19,20"></div>
                                                    <div class="table-btn m rm cm" data-num="19"></div>
                                                    <div class="table-btn h rb cm" data-num="19,20,21"></div>
                                                </div>
                                                <div class="row5">
                                                    <div class="table-btn ms2 rm cm" data-type="sector" data-sector="10" data-num="2,4,6,8,10,11,13,15,17,20,22,24,26,28,29,31,33,35"></div>
                                                </div>
                                            </div>
                                            <!-- col8 -->
                                            <div class="col8">
                                                <div class="row1">
                                                    <div class="table-btn v rm cv" data-num="21,24"></div>
                                                    <div class="table-btn m rm cm" data-num="24"></div>
                                                </div>
                                                <div class="row2">
                                                    <div class="table-btn c rh cv" data-num="20,21,23,24"></div>
                                                    <div class="table-btn v rm cv" data-num="20,23"></div>
                                                    <div class="table-btn h rh cm" data-num="23,24"></div>
                                                    <div class="table-btn m rm cm" data-num="23"></div>
                                                </div>
                                                <div class="row3">
                                                    <div class="table-btn c rh cv" data-num="19,20,22,23"></div>
                                                    <div class="table-btn v rm cv" data-num="19,22"></div>
                                                    <div class="table-btn c rb cv" data-num="19,20,21,22,23,24"></div>
                                                    <div class="table-btn h rh cm" data-num="22,23"></div>
                                                    <div class="table-btn m rm cm" data-num="22"></div>
                                                    <div class="table-btn h rb cm" data-num="22,23,24"></div>
                                                </div>
                                            </div>
                                            <!-- col9 -->
                                            <div class="col9">
                                                <div class="row1">
                                                    <div class="table-btn v rm cv" data-num="24,27"></div>
                                                    <div class="table-btn m rm cm" data-num="27"></div>
                                                </div>
                                                <div class="row2">
                                                    <div class="table-btn c rh cv" data-num="23,24,26,27"></div>
                                                    <div class="table-btn v rm cv" data-num="23,26"></div>
                                                    <div class="table-btn h rh cm" data-num="26,27"></div>
                                                    <div class="table-btn m rm cm" data-num="26"></div>
                                                </div>
                                                <div class="row3">
                                                    <div class="table-btn c rh cv" data-num="22,23,25,26"></div>
                                                    <div class="table-btn v rm cv" data-num="22,25"></div>
                                                    <div class="table-btn c rb cv" data-num="22,23,24,25,26,27"></div>
                                                    <div class="table-btn h rh cm" data-num="25,26"></div>
                                                    <div class="table-btn m rm cm" data-num="25"></div>
                                                    <div class="table-btn h rb cm" data-num="25,26,27"></div>
                                                </div>
                                                <div class="row4">
                                                    <div class="table-btn ms4 rm cm" data-type="sector" data-sector="6" data-num="25,26,27,28,29,30,31,32,33,34,35,36"></div>
                                                </div>
                                                <div class="row5">
                                                    <div class="table-btn ms2 rm cm" data-type="sector" data-sector="11" data-num="2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36"></div>
                                                </div>
                                            </div>
                                            <!-- col10 -->
                                            <div class="col10">
                                                <div class="row1">
                                                    <div class="table-btn v rm cv" data-num="27,30"></div>
                                                    <div class="table-btn m rm cm" data-num="30"></div>
                                                </div>
                                                <div class="row2">
                                                    <div class="table-btn c rh cv" data-num="26,27,29,30"></div>
                                                    <div class="table-btn v rm cv" data-num="26,29"></div>
                                                    <div class="table-btn h rh cm" data-num="29,30"></div>
                                                    <div class="table-btn m rm cm" data-num="29"></div>
                                                </div>
                                                <div class="row3">
                                                    <div class="table-btn c rh cv" data-num="25,26,28,29"></div>
                                                    <div class="table-btn v rm cv" data-num="25,28"></div>
                                                    <div class="table-btn c rb cv" data-num="25,26,27,28,29,30"></div>
                                                    <div class="table-btn h rh cm" data-num="28,29"></div>
                                                    <div class="table-btn m rm cm" data-num="28"></div>
                                                    <div class="table-btn h rb cm" data-num="28,29,30"></div>
                                                </div>
                                            </div>
                                            <!-- col11 -->
                                            <div class="col11">
                                                <div class="row1">
                                                    <div class="table-btn v rm cv" data-num="30,33"></div>
                                                    <div class="table-btn m rm cm" data-num="33"></div>
                                                </div>
                                                <div class="row2">
                                                    <div class="table-btn c rh cv" data-num="29,30,32,33"></div>
                                                    <div class="table-btn v rm cv" data-num="29,32"></div>
                                                    <div class="table-btn h rh cm" data-num="32,33"></div>
                                                    <div class="table-btn m rm cm" data-num="32"></div>
                                                </div>
                                                <div class="row3">
                                                    <div class="table-btn c rh cv" data-num="28,29,31,32"></div>
                                                    <div class="table-btn v rm cv" data-num="28,31"></div>
                                                    <div class="table-btn c rb cv" data-num="28,29,30,31,32,33"></div>
                                                    <div class="table-btn h rh cm" data-num="31,32"></div>
                                                    <div class="table-btn m rm cm" data-num="31"></div>
                                                    <div class="table-btn h rb cm" data-num="31,32,33"></div>
                                                </div>
                                                <div class="row5">
                                                    <div class="table-btn ms2 rm cm" data-type="sector" data-sector="12" data-num="25,26,27,28,29,30,31,32,33,34,35,36"></div>
                                                </div>
                                            </div>
                                            <!-- col12 -->
                                            <div class="col12">
                                                <div class="row1">
                                                    <div class="table-btn v rm cv" data-num="33,36"></div>
                                                    <div class="table-btn m rm cm" data-num="36"></div>
                                                </div>
                                                <div class="row2">
                                                    <div class="table-btn c rh cv" data-num="32,33,35,36"></div>
                                                    <div class="table-btn v rm cv" data-num="32,35"></div>
                                                    <div class="table-btn h rh cm" data-num="35,36"></div>
                                                    <div class="table-btn m rm cm" data-num="35"></div>
                                                </div>
                                                <div class="row3">
                                                    <div class="table-btn c rh cv" data-num="31,32,34,35"></div>
                                                    <div class="table-btn v rm cv" data-num="31,34"></div>
                                                    <div class="table-btn c rb cv" data-num="31,32,33,34,35,36"></div>
                                                    <div class="table-btn h rh cm" data-num="34,35"></div>
                                                    <div class="table-btn m rm cm" data-num="34"></div>
                                                    <div class="table-btn h rb cm" data-num="34,35,36"></div>
                                                </div>
                                            </div>
                                            <!-- col13 -->
                                            <div class="col13">
                                                <div class="row1">
                                                    <div class="table-btn m rm cm" data-type="sector" data-sector="1" data-num="3,6,9,12,15,18,21,24,27,30,33,36"></div>
                                                </div>
                                                <div class="row2">
                                                    <div class="table-btn m rm cm" data-type="sector" data-sector="2" data-num="2,5,8,11,14,17,20,23,26,29,32,35"></div>
                                                </div>
                                                <div class="row3">
                                                    <div class="table-btn m rm cm" data-type="sector" data-sector="3" data-num="1,4,7,10,13,16,19,22,25,28,31,34"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <input id="numwin" type="hidden" value='<c:out value="${winnumb}"></c:out>'>
                                    <form id="formaa" >
                                        <input type="hidden" name="bet" id ="bettable" value="">
                                        <input type="hidden" name="positions" id="positions"value="">
                                        <input type="hidden" name="result">
                                        <input type="hidden" name="command" value="game">
                                        <button class="spinBtn" id="spinjqr">Spin</button>
                                        
                                    </form>
                                </div>
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
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script src="../js/game/jquery.min.js"></script>
    <script src="../js/game/bootstrap.min.js"></script>
    <script src="https://wp-n7best.rhcloud.com/wp-content/uploads/2014/04/jquery.keyframes.min_.js"></script>
    <script src="../js/game/roulette.js"></script>
    <script src="../js/game/table.js"></script>
    <script src="../js/game/global.js"></script>
    
     <script type="text/javascript">
 
       $("#formaa").submit(function(e) {
    	    var url = "../Contr";
    	   
    	    $.ajax({
    	           type: "POST",
    	           url: url,
    	           data: $("#formaa").serialize(), 
    	           
    	           success: function(data)
    	           {
    	        	   start_roulette();
    	        	   $("#resultbet").text(data);
    	        	   
    	           }
    	         });
    	    e.preventDefault(); 
    	});
    
    </script>
    
    
</body>
</html>