<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String baseUrl = request.getContextPath(); %>

<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/css/bootstrap.css">
<title>首页</title>
<!--[if lt IE 8]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
  <div class="container">
    <center>首页</center>
    <ul style="display: in-line">
      <li><a href="<%=baseUrl%>/client/projects">项目案例</a></li>
      <li><a href="<%=baseUrl%>/client/teams">团队介绍</a></li>
      <li><a href="<%=baseUrl%>/client/news">新闻动态</a></li>
      <li><a href="<%=baseUrl%>/client/aboutUs">关于AUD</a></li>
      <li><a href="<%=baseUrl%>/client/jobs">招聘</a></li>
    </ul>
  </div>
</body>
<script type="text/javascript" src="<%=baseUrl%>/static/lib/bower_components/jquery/dist/jquery.min.js"></script>
<script type="text/javascript" src="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
</html>