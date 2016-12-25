<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String baseUrl = request.getContextPath(); %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/shared/_stylesheet.jsp" %>
<title>首页</title>
</head>
<body>
  <center>首页</center>
  <ul style="display: in-line">
    <li><a href="<%=baseUrl%>/client/projects">项目案例</a></li>
    <li><a href="<%=baseUrl%>/client/teams">团队介绍</a></li>
    <li><a href="<%=baseUrl%>/client/news">新闻动态</a></li>
    <li><a href="<%=baseUrl%>/client/aboutUs">关于AUD</a></li>
    <li><a href="<%=baseUrl%>/client/jobs">招聘</a></li>
  </ul>
</body>
<%@ include file="/shared/_javascripte.jsp"%>
</html>