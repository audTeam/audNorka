<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String baseUrl = request.getContextPath(); %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/css/bootstrap.min.css">
<title>招聘详情</title>
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
    <h1>招聘详情</h1>
  </div>
</body>
<script type="text/javascript" src="<%=baseUrl%>/static/lib/bower_components/jquery/dist/jquery.min.js"></script>
<script type="text/javascript" src="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
</html>