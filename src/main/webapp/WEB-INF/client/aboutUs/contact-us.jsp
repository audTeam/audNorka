<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% String baseUrl = request.getContextPath(); %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=320,maximum-scale=1.3,user-scalable=no">
<link rel="stylesheet" href="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/lib/bower_components/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/shared_show.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/phone.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/contact-us.css">
<title>联系我们</title>
<script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=0hZwZLTDtP2Ap7XOA1sSZUN4GaohG2ud"></script>
</head>
<body>
<jsp:include page="../shared/_header.jsp"></jsp:include>
<div class="part-one container-fluid">
    <div class="row">
        <div class="col-xs-12 content-contact"><h3> <spring:message code="Contact" /> </h3></div>
        <ul class="col-md-6 col-xs-12 content-ul">
          <li> ${contactUsPage.content} </li>
          <c:if test="${param.message=='success' }">
			<div class="alert alert-warning">
				<a href="#" class="close" data-dismiss="alert">
					&times;
				</a>
				提交成功
			</div>
          </c:if>
          <li class="form-area">
            <form action="<%=baseUrl%>/client/aboutUs/leaveMessages" method="post">
              <div class="form-group">
                  <label class="sign-up"><spring:message code="SIGN_UP_TO_RECEIVE_NEWS" /></label>
              </div>
              <div class="form-group">
                <label for="inputEmail"><spring:message code="Email_address" /> :*</label>
                <input type="email" name="email" class="form-control" id="inputEmail">
              </div>
              <div class="form-group">
                <label for="inputFirstName"> <spring:message code="First_Name" /> :</label>
                <input type="text" class="form-control" id="inputFirstName" name="firstName">
              </div>
              <div class="form-group">
                <label for="inputLastName"><spring:message code="Last_Name" />:</label>
                <input type="text" class="form-control" id="inputLastName" name="lastName">
              </div>
              <div class="form-group">
                <label for="inputCountry"> <spring:message code="Country" /> :*</label>
                <select class="form-control my-select" name="country">
                <option></option>
                </select>
              </div>
              <div class="form-group">
                <label for="inputCity"><spring:message code="City" /> :</label>
                <input type="text" class="form-control city" id="inputCity" name="city">
              </div>
              <div class="form-group">
                <label for="inputMessage"><spring:message code="Message" /> :</label>
                <textarea class="form-control" id="inputMessage" name="message"></textarea>
              </div>
    
              <button type="submit" class="btn join-btn"> <spring:message code="join_now"/> </button>
            </form>
          </li>
        </ul>
        <ul class="col-md-4 col-md-offset-2 col-xs-12 content-ul">
            <li style="color: #ca3726"> <spring:message code="Our_Office" /> </li>
            <li style="font-weight: bold;"></li>
            <li>${contactUsPage.address }</li>
            <li><spring:message code="Tel" /> :${contactUsPage.tel }</li>
            <li id="allmap"></li>
            <div id="latitude" class="hidden" data-latitude="${contactUsPage.latitude}"></div>
            <div id="longitude" class="hidden" data-longitude="${contactUsPage.longitude}"></div>
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