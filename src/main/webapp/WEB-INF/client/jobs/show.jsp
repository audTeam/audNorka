<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<% String baseUrl = request.getContextPath(); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/shared_show.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/job-detail.css">
<script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
<title>招聘信息详情</title>
</head>
<body>
<jsp:include page="../shared/_header.jsp"></jsp:include>
<div class="part-one container-fluid">
    <div class="row">
        <div class="col-xs-12"><h4>OPEN POSITIONS</h4></div>
        <ul class="col-xs-3">
          <li><a href="#">Architect</a></li>
          <li><a href="#">Architect</a></li>
          <li><a href="#">Architect</a></li>
        </ul>
    </div>
</div>
<div class="part-two container-fluid">
    <ul class="title">
        <li>Job Number</li>
        <li>Date</li>
        <li>Position</li>
        <li>Location</li>
        <li>Description</li>
    </ul>
    <ul class="content">
        <li>17-0101</li>
        <li>3/17/2017</li>
        <li>Architect</li>
        <li>Shanghai</li>
        <li><span>Role & Responsibilites</span><p>To work directly with clients from initial work directly with clients from initial</p></li>
        <li><span>Role & Responsibilites</span><p>To work directly with clients from initial work directly with clients from initial</p></li>
        <li class="content-footer"><span style="color: #ca3726">Apply</span> by sending your CV and Portfolio to <a href="#">tingting.ni@audinc.com</a><p>Or Send This Job to a Friend</p></li>
    </ul>
</div>
<jsp:include page="../shared/_footer.jsp"></jsp:include>
<script src="bower_components/jquery/dist/jquery.min.js"></script>
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="js/index.js"></script>
</body>
</html>