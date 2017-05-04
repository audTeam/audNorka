<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% String baseUrl = request.getContextPath(); %>

<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/shared_show.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/sites_show.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/phone.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/project_list.css">
<title>城市设计全部案例</title>
<script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
</head>
<body>
    <jsp:include page="../shared/_header.jsp"></jsp:include>
    <div id="base-url" data-base-url="<%=baseUrl%>" class="hidden"></div>
    <div class="main container-fluid">
        <c:import url="../shared/_banner.jsp"></c:import>
        <section class="part-one">
            <div id="projectContainer" class="row all-case">
              <c:forEach var="item" items="${collection }">
                <div class="col-md-3 col-xs-12">
                  <a href="<%=baseUrl%>/client/projects/${item.project.id}">
                    <img src="<%=application.getInitParameter("imageServer")%>/${item.images[0].imgUrl}" alt="pic" class="img-responsive">
                  </a><a href="<%=baseUrl%>/client/projects/${item.project.id}">
                  <h5>${item.project.name}</h5></a>
                  <h6 class="address">${item.project.address}</h6>
                </div>
              </c:forEach>
            </div>
            <div id="projectContainer" class="row all-case">
              <div id="loadMoreButton" class="col-sm-12 view_more">
                <c:if test="${pages.pages>1}">
                  <span style="cursor:pointer;">查看更多</span>
                </c:if>
              </div>
            </div>
        </section>
    </div>
    <jsp:include page="../shared/_footer.jsp"></jsp:include>
</body>
<script type="text/javascript" src="<%=baseUrl%>/static/lib/bower_components/jquery/dist/jquery.min.js"></script>
<script type="text/javascript" src="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=baseUrl%>/static/common/client/js/sites_show.js"></script>
<script type="text/javascript" src="<%=baseUrl%>/static/common/client/js/projects_index.js"></script>
</html>