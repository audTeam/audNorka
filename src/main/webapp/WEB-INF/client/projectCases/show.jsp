<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% String baseUrl = request.getContextPath(); %>
<% String imageServer = application.getInitParameter("imageServer") %>

<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/shared_show.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/city-design.css">
<title>${navMenu.name}</title>
<script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
</head>
<body>
    <jsp:include page="../shared/_header.jsp"></jsp:include>
    <div class="main container">
        <section class="part-one">
            <img src="<%=imageServer%>/${navMenu.imgUrl}" alt="pic" class="img-responsive">
            <div class="city-title">
                <h1>${navMenu.name}</h1>
                <h4>${navMenu.navMenuDesc}</h4>
            </div>
        </section>
        <section class="part-two">
            <div class="city-design-content">
                <p>${navMenu.content}</p>
            </div>
            <div class="row relative-case">
                <div class="col-sm-12">相关案例</div>
                <c:forEach var="item" items="${collection}">
                <c:set var="project" value="${item.project}"></c:set>
                  <div class="col-sm-3">
                    <a href="<%=baseUrl%>/client/projects/${project.id}">
                      <img src="<%=imageServer%>/${item.imags[0].imgUrl}" alt="pic" class="img-responsive">
                      <p>${project.zhName}</p>
                    </a>
                  </div>
                </c:forEach>
                <div class="col-sm-12"><a href="<%=baseUrl%>/client/projects" class="btn btn-default pull-right" role="button">查看更多</a></div>
            </div>
        </section>
    </div>
    <jsp:include page="../shared/_footer.jsp"></jsp:include>
</body>
<script type="text/javascript" src="<%=baseUrl%>/static/lib/bower_components/jquery/dist/jquery.min.js"></script>
<script type="text/javascript" src="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=baseUrl%>/static/common/client/js/sites_show.js"></script>
</html>