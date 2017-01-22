<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% String baseUrl = request.getContextPath(); %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/shared_show.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/sites_show.css">
<title>首页</title>
</head>
<body>
    <jsp:include page="../shared/_header.jsp"></jsp:include>
    <div class="main container">
        <section>
        	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                  <c:forEach var="banner" items="${banners}" varStatus="status">
                    <c:if test="${status.index==0}">
                      <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    </c:if>
                    <c:if test="${status.index!=0}">
                      <li data-target="#carousel-example-generic" data-slide-to="${status.index}"></li>
                    </c:if>
                  </c:forEach>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                  <c:forEach var="banner" items="${banners}" varStatus="status">
                    <c:if test="${status.index==0}">
                      <div class="item active">
                    </c:if>
                    <c:if test="${status.index!=0}">
                      <div class="item">
                    </c:if>
                        <img src="<%=baseUrl%>/${banner.imgUrl }" alt="pic" class="img-responsive">
                    </div>
                  </c:forEach>
                </div>
                <!-- Controls -->
                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </section>
        <section class="part_two">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                    <img src="<%=baseUrl%>/static/common/client/images/sites/picture.jpg" alt="pic" class="img-responsive">
                    <div class="text">
                        <a href="#">
                            <p class="text-one">中国区总经理吕羽荣膺美国城市土地会40名40岁以下青年精英奖</p>
                            <p class="text-two">中国区总经理吕羽荣膺美国城市土地会40名40岁以下青年精英奖</p>
                        </a>
                        <p class="news"><a href="#">[NEWS]</a></p>
                    </div>
                </div>

                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                    <img src="<%=baseUrl%>/static/common/client/images/sites/picture.jpg" alt="pic" class="img-responsive">
                    <div class="text">
                        <a href="#">
                            <p class="text-one">中国区总经理吕羽荣膺美国城市土地会40名40岁以下青年精英奖</p>
                            <p class="text-two">中国区总经理吕羽荣膺美国城市土地会40名40岁以下青年精英奖</p>
                        </a>
                        <p class="news"><a href="#">[NEWS]</a></p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                    <img src="<%=baseUrl%>/static/common/client/images/sites/picture.jpg" alt="pic" class="img-responsive">
                    <div class="text">
                        <a href="#">
                            <p class="text-one">中国区总经理吕羽荣膺美国城市土地会40名40岁以下青年精英奖</p>
                            <p class="text-two">中国区总经理吕羽荣膺美国城市土地会40名40岁以下青年精英奖</p>
                        </a>
                        <p class="news"><a href="#">[NEWS]</a></p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                    <img src="<%=baseUrl%>/static/common/client/images/sites/picture.jpg" alt="pic" class="img-responsive">
                    <div class="text">
                        <a href="#">
                            <p class="text-one">中国区总经理吕羽荣膺美国城市土地会40名40岁以下青年精英奖</p>
                            <p class="text-two">中国区总经理吕羽荣膺美国城市土地会40名40岁以下青年精英奖</p>
                        </a>
                        <p class="news"><a href="#">[NEWS]</a></p>
                    </div>
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