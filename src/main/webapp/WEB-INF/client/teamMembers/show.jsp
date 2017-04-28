<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<% String baseUrl = request.getContextPath(); %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=320,maximum-scale=1.3,user-scalable=no">
<link rel="stylesheet" href="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/shared_show.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/phone.css">
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
        <div class="col-md-5 design-intro">
            <ul>
                <li>
                    <h3 class="bold-text">${teamMember.name }</h3>
                    <h6>${teamMember.position }</h6>
                </li>
                <li>
                    <h6 class="bold-text"> <spring:message code="EDUCATION_BACKGROUND" /> </h6>
                    <h6>${teamMember.educationBackground }</h6>
                </li>
                <li>
                    <h6 class="bold-text"><spring:message code="WORK_EXPERIENCE" /></h6>
                    <h6>${teamMember.educationBackground }</h6>
                </li>
                <li>
                    <h6 class="bold-text"><spring:message code="WORK_EXPERIENCE" /></h6>
                    <h6>${teamMember.workExperience }</h6>
                </li>
                <li class="key-project"><spring:message code="Key_Projects" /></li>
                <li><h6>${teamMember.keyProject }</h6></li>
            </ul>
        </div>
        <div class="col-md-12 contact-work">
            <div class="col-md-12 key-project"><spring:message code="Featured_Work" /></div>
            <c:forEach var="relateProject" items="${projects}">
              <div class="col-md-2 work-pic">
                <a href="<%= baseUrl%>/client/projects/${relateProject.project.id}">
                  <img src="<%= application.getInitParameter("imageServer") %>/${relateProject.images[0].imgUrl}" alt="pic" class="img-responsive"></a>
                  <a href="<%= baseUrl%>/client/projects/${project.id}"><h5>${relateProject.project.name }</h5></a><h6>${relateProject.project.address }</h6></div>
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