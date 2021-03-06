<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<% String baseUrl = request.getContextPath(); %>

<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=320,maximum-scale=1.3,user-scalable=no">
<link rel="stylesheet" href="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/shared_show.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/phone.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/designer-list.css">
<title>设计师列表</title>
<!--[if lt IE 9]>
  <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<body>
    <jsp:include page="../shared/_header.jsp"></jsp:include>
    <div class="main container-fluid">
    <div class="row">
      <c:forEach var="teamMember" items="${teamMembers}">
        <div class="col-md-4 col-xs-12 work-pic pic-block-box">
          <a href="<%=baseUrl%>/client/teamMembers/${teamMember.id}">
            <img src="<%=application.getInitParameter("imageServer") %>/${teamMember.imgUrl}" alt="pic" class="img-responsive">
          </a>
          <a href="<%=baseUrl%>/client/teamMembers/${teamMember.id}">
            <img class="title-icon" src="<%= baseUrl%>/static/common/client/images/sites/right.png">
            <h5>${teamMember.name}</h5>
          </a>
          <h6>${teamMember.name}</h6>
        </div>
      </c:forEach>
    </div>
   </div>
    <jsp:include page="../shared/_footer.jsp"></jsp:include>
</body>
<script type="text/javascript" src="<%=baseUrl%>/static/lib/bower_components/jquery/dist/jquery.min.js"></script>
<script type="text/javascript" src="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=baseUrl%>/static/common/client/js/shared_js.js"></script>
<script type="text/javascript" src="<%=baseUrl%>/static/common/client/js/sites_show.js"></script>
</html>