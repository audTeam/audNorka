<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% String baseUrl = request.getContextPath(); %>

<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/lib/bower_components/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/shared_show.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/contact-us.css">
<title>联系我们</title>
<script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=Gy1azRsvQiyGnMGymKTOvjaTrllOwN1W"></script>
</head>
<body>
<jsp:include page="../shared/_header.jsp"></jsp:include>
<div class="part-one container-fluid">
    <div class="row">
        <div class="col-xs-12"><h3>Contact</h3></div>
        <ul class="col-xs-6">
          <li>Architect</li>
          <li>Architect</li>
          <li class="form-area">
            <form>
              <div class="form-group">
                  <label class="sign-up">SIGN UP TO RECEIVE NEWS</label>
              </div>
              <div class="form-group">
                <label for="inputEmail">Email address:*</label>
                <input type="email" class="form-control" id="inputEmail">
              </div>
              <div class="form-group">
                <label for="inputFirstName">First Name:</label>
                <input type="text" class="form-control" id="inputFirstName">
              </div>
              <div class="form-group">
                <label for="inputLastName">Last Name:</label>
                <input type="text" class="form-control" id="inputLastName">
              </div>
              <div class="form-group">
                <label for="inputCountry">Country:*</label>
                <select class="form-control my-select">
                <option></option>
                </select>
              </div>
              <div class="form-group">
                <label for="inputCity">City:</label>
                <input type="text" class="form-control city" id="inputCity">
              </div>
              <div class="form-group">
                <label for="inputMessage">Message:</label>
                <textarea class="form-control" id="inputMessage"></textarea>
              </div>
    
              <button type="submit" class="btn join-btn">Join Now</button>
            </form>
          </li>
        </ul>
        <ul class="col-xs-4 col-xs-offset-2">
            <li style="color: #ca3726">Our Office</li>
            <li style="font-weight: bold;">AUD Design Consulting Inc.</li>
            <li>100 Century Avenue,67F 100 Century Avenue,67F</li>
            <li>T:86.21 61057318</li>
            <li id="allmap"></li>
        </ul>
    </div>
</div>
 <jsp:include page="../shared/_footer.jsp"></jsp:include>
</body>
<script type="text/javascript" src="<%=baseUrl%>/static/lib/bower_components/jquery/dist/jquery.min.js"></script>
<script type="text/javascript" src="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=baseUrl%>/static/common/client/js/sites_show.js"></script>
<script type="text/javascript" src="<%=baseUrl%>/static/common/client/js/countryCity.js"></script>
<script type="text/javascript" src="<%=baseUrl%>/static/common/client/js/map.js"></script>
</html>