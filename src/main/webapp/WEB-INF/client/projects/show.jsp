<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/shared_show.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/sites_show.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/phone.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/project.css">
<title>案例详情</title>
<script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
</head>
<body>
    <jsp:include page="../shared/_header.jsp"></jsp:include>
    <div class="main container-fluid">
       <c:import url="../shared/_banner.jsp"></c:import>
        <section class="part_two">
            <div class="row">
                <div class="col-xs-12 pic-title col-md-offset-3 col-xs-offset-1"><p>${project.name}</p></div>
                <div class="col-md-3 col-xs-12 col-xs-offset-1 col-md-offset-0">
                    <ul class="info">
                        <li class="title-text"><spring:message code="Information"/></li>
                        <li>
                            <ul class="left-inf">
                                <li>Client:</li>
                                <li>Size:</li>
                                <li>Location:</li>
                                <li>Scope:</li>
                            </ul>
                            <ul class="right-inf">
                                <li>${project.client }</li>
                                <li>${project.size }</li>
                                <li>${project.location }</li>
                                <li>${project.scope }</li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="serv">
                        <li class="title-text"><spring:message code="Service"/></li>
                        <li>${project.service }</li>
                    </ul>
                </div>
                <div class="col-md-6 col-xs-12 col-xs-offset-1 col-md-offset-0">
                    <ul>
                        <li class="title-text"><spring:message code="concept" /> </li>
                        <li class="content-text">${project.content }</li>
                    </ul>
                    <ul class="team">
                        <li class="title-text"><spring:message code="Team" /> </li>
                        <c:forEach var="item" items="${teamMembercollection}">
                          <li class="col-md-4 col-xs-6 team-pic">
                            <a href="<%=baseUrl%>/client/teamMembers/${item.teamMember.id}">
                              <img src="<%=application.getInitParameter("imageServer")%>/${item.teamMember.imgUrl}" alt="pic" class="img-responsive">
                            </a>
                            <a href="<%=baseUrl%>/client/teamMembers"><h5>${item.teamMember.name}</h5></a>
                            <h6>${item.teamMember.position}</h6></li>
                        </c:forEach>
                    </ul>
                </div>
                <div class="col-md-2 col-xs-12 col-xs-offset-1 col-md-offset-1 similar-ul">
                    <ul class="similar">
                        <li class="title-text"><spring:message code="Similar" /> </li>
                        <c:forEach var="project" items="${collection}">
                          <li>
                            <a href="<%=baseUrl%>/client/projects/${project.project.id}">
                              <img src="<%=application.getInitParameter("imageServer")%>/${project.images[0].imgUrl}" alt="pic" class="img-responsive">
                            </a>
                            <a href="<%=baseUrl%>/client/projects/${project.project.id}"><h5>${project.project.name}</h5></a>
                            <h6>${project.project.address}</h6>
                          </li>
                        </c:forEach>
                        <!-- 暂时注释显示完所有数据 -->
                        <li class="view_more hidden"><a href="#"><spring:message code="VIEW_MORE" /> </a></li>
                    </ul>
                </div>
            </div>
        </section>
    </div>
    <jsp:include page="../shared/_footer.jsp"></jsp:include>
</body>
<script type="text/javascript" src="<%=baseUrl%>/static/lib/bower_components/jquery/dist/jquery.min.js"></script>
<script type="text/javascript" src="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=baseUrl%>/static/common/client/js/sites_show.js"></script>
</html>