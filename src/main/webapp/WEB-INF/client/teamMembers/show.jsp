<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<% String baseUrl = request.getContextPath(); %>

<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/shared_show.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/designer-detail.css">
<title>设计团队</title>
<!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <jsp:include page="../shared/_header.jsp"></jsp:include>
<div class="main container-fluid">
    <div row>
        <div class="col-md-7 design-pic">
            <img src="<%=application.getInitParameter("imageServer")%>/${teamMember.imgUrl}" alt="pic" class="img-responsive">
            <ul>
                <li class="people-intro"><h6>${teamMember.brief }</h6></li>
            </ul>
        </div>
        <div class="col-md-5">
            <ul>
                <li>
                    <h3 class="bold-text">${teamMember.name }</h3>
                    <h6>${teamMember.position }</h6>
                </li>
                <li>
                    <h6 class="bold-text">EDUCATION BACKGROUND</h6>
                    <h6>${teamMember.educationBackground }</h6>
                </li>
                <li>
                    <h6 class="bold-text">WORK EXPERIENCE</h6>
                    <h6>${teamMember.educationBackground }</h6>
                </li>
                <li>
                    <h6 class="bold-text">WORK EXPERIENCE</h6>
                    <h6>${teamMember.workExperience }</h6>
                </li>
                <li class="key-project">Key Projects</li>
                <li><h6>${teamMember.keyProject }</h6></li>
            </ul>
        </div>
        <div class="col-md-12 contact-work">
            <div class="col-md-12 key-project">Featured Work</div>
            <c:forEach var="project" items="${projects}">
              <div class="col-md-2 work-pic">
                <a href="<%= baseUrl%>/client/projects/${project.id}">
                  <img src="<%=baseUrl%>/static/common/client/images/sites/porject1.png" alt="pic" class="img-responsive"></a>
                  <a href="#"><h5>${project.name}</h5></a><h6>${project.address }</h6></div>
            </c:forEach>
        </div>
    </div>
</div>
    <jsp:include page="../shared/_footer.jsp"></jsp:include>
</body>
<script type="text/javascript" src="<%=baseUrl%>/static/lib/bower_components/jquery/dist/jquery.min.js"></script>
<script type="text/javascript" src="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=baseUrl%>/static/common/client/js/sites_show.js"></script>
</html>