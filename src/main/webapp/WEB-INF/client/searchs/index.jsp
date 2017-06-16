<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% String baseUrl = request.getContextPath(); %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/shared_show.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/sites_show.css">
<title><spring:message code="sites" /> </title>
<!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <jsp:include page="../shared/_header.jsp"></jsp:include>
    <div class="main container">
        <c:import url="../shared/_banner.jsp"></c:import>
        <section class="part_two">
            <div class="row">
              <c:forEach var="newsItem" items="${pages.list}">
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                    <img src="${pageContext.request.contextPath}/${newsItem.headImg}" alt="pic" class="img-responsive">
                    <div class="text">
                        <a href="${pageContext.request.contextPath}/client/newsCategories/${newsItem.navmenueId}/news/${newsItem.id}">
                            <p class="text-one">${newsItem.title}</p>
                            <p class="text-two">${fn:substring(newsItem.subTitle, 0, 12)}...</p>
                        </a>
                        <p class="news"><a href="${pageContext.request.contextPath}/client/newsCategories/${newsItem.navmenueId}">[NEWS]</a></p>
                    </div>
                </div>
              </c:forEach>
            </div>
        </section>
    </div>
    <jsp:include page="../shared/_footer.jsp"></jsp:include>
</body>
<script type="text/javascript" src="<%=baseUrl%>/static/lib/bower_components/jquery/dist/jquery.min.js"></script>
<script type="text/javascript" src="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=baseUrl%>/static/common/client/js/shared_js.js"></script>
<script type="text/javascript" src="<%=baseUrl%>/static/common/client/js/sites_show.js"></script>
</html>