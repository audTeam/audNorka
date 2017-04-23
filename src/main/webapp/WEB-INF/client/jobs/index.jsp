<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String baseUrl = request.getContextPath(); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/shared_show.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/sites_show.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/job-info.css">
<title>招聘信息</title>
<script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
</head>
<body>
  <jsp:include page="../shared/_header.jsp"></jsp:include>
    <div class="main container-fluid">
        <div class="row">
            <div class="col-xs-12">
                <img src="<%= application.getInitParameter("imageServer")%>/${historyIntroduce.jobHeadImg}" class="img-responsive">
            </div>
        </div>
        <div class="row part-two">
            <div class="col-xs-12 open"><h4>Open position</h4></div>
            <ul class="col-xs-3">
              <c:forEach var="jobCategory" items="${jobCategories}">
                <li><a href="<%=baseUrl%>/client/jobs?id=${jobCategory.id}">${jobCategory.name}</a></li>
              </c:forEach>
            </ul>
            <div class="col-xs-9">
                <div class="position-detail">${currentCategory.content }</div>
                <div class="row position-title">
                    <p class="col-xs-2 position">Date</p>
                    <p class="col-xs-2 position">Position</p>
                    <p class="col-xs-2 position">Department</p>
                    <p class="col-xs-2 position">Location</p>
                    <p class="col-xs-3 position">Location</p>
                </div>
                <div class="row position-content">
                  <c:forEach var="job" items="${currentJobs}">
                    <a href="<%=baseUrl%>/client/jobs/jobDetail?id=${job.id}">
                    <p class="col-xs-2 position">
                      <fmt:formatDate value="${job.createdAt }" pattern="yyyy-M-d"/>
                    </p>
                    <p class="col-xs-2 position">${job.position }</p>
                    <p class="col-xs-2 position">${job.department }</p>
                    <p class="col-xs-2 position">${job.location }</p>
                    <p class="col-xs-3 position">${job.locationDetail }</p>
                    </a>
                  </c:forEach>
                </div>
                <div class="col-xs-12"><a href="#"><img src="<%=baseUrl%>/static/common/client/images/sites/left.png"></a>　<a href="#"><img src="<%=baseUrl%>/static/common/client/images/sites/right.png"></a></div>
            </div>
        </div>
    </div>
  <jsp:include page="../shared/_footer.jsp"></jsp:include>
</body>
<script type="text/javascript" src="<%=baseUrl%>/static/lib/bower_components/jquery/dist/jquery.min.js"></script>
<script type="text/javascript" src="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=baseUrl%>/static/common/client/js/sites_show.js"></script>
</html>