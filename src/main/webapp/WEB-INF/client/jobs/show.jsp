<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<% String baseUrl = request.getContextPath(); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=320,maximum-scale=1.3,user-scalable=no">
<link rel="stylesheet" href="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/shared_show.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/phone.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/job-detail.css">
<!--[if lt IE 9]>
<script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<title>招聘信息详情</title>
</head>
<body>
<jsp:include page="../shared/_header.jsp"></jsp:include>
<div class="part-one container-fluid">
    <div class="row">
        <div class="col-xs-12 open-pos"><h4> <spring:message code="Open_position" /> </h4></div>
        <ul class="col-xs-3">
          <c:forEach var="jobCategory" items="${jobCategories }">
            <li><a href="<%=baseUrl%>/client/jobs?id=${jobCategory.id}">${jobCategory.name}</a></li>
          </c:forEach>
        </ul>
    </div>
</div>
<div class="part-two container-fluid">
    <ul class="title hidden-xs">
        <li><spring:message code="Job_Number" /> </li>
        <li> <spring:message code="Date" /> </li>
        <li> <spring:message code="Position" /> </li>
        <li> <spring:message code="Location" /> </li>
        <li> <spring:message code="Description" /> </li>
    </ul>
    <ul class="content">
        <li>${currentJob.jobNumber }</li>
        <li><fmt:formatDate value="${currentJob.createdAt }" pattern="yyyy-M-d"/></li>
        <li>${currentJob.position }</li>
        <li>${currentJob.location }/${currentJob.location }</li>
        <li>${currentJob.description }</li>
    </ul>
</div>
<jsp:include page="../shared/_footer.jsp"></jsp:include>
<script src="<%=baseUrl%>/static/lib/bower_components/jquery/dist/jquery.min.js"></script>
<script src="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=baseUrl%>/static/common/client/js/shared_js.js"></script>
<!-- <script src="js/index.js"></script> -->
</body>
</html>