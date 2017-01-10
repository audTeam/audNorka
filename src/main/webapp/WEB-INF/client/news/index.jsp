<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String baseUrl = request.getContextPath(); %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/shared_show.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/news.css">
<title>新闻动态</title>
</head>
<body>
  <jsp:include page="../shared/_header.jsp"></jsp:include>
    <div class="main container">
        <div class="row">
            <div class="col-sm-3">
                <ul class="nav news-tag">
                    <li><a href="#" class="news-active">最新动态<span>></span></a></li>
                    <li><a href="#">项目动态<span>></span></a></li>
                    <li><a href="#">公司动态<span>></span></a></li>
                </ul>
            </div>
            <div class="col-sm-9">
                <ul class="nav more-case">
                    <li class="clearfix">
                        <div class="col-xs-4 case-pic"><a href="<%=baseUrl%>/client/news/1"><img src="<%=baseUrl%>/static/common/client/images/news/news-pic1_03.png" alt="pic" class="img-responsive"></a></div>
                        <div class="col-xs-8 case-text">
                            <p class="date">12.02.16</p>
                            <h4>Perkins+Will Celebrates Dpening Evergreen Transit Line</h4>
                            <div class="text">
                                <p>市更新的成功和可持续型城市的形成需要文化领域、环保领域和经济领域的响应。我们的城市建筑师与不同领域的设计专业市更新的成功和可持续型城市的形成需要文化领域、环保领域和经济领域的响应。我们的城市建筑师与不同领域的设计</p>
                            </div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <div class="col-xs-4 case-pic"><a href="<%=baseUrl%>/client/news/1"><img src="<%=baseUrl%>/static/common/client/images/news/news-pic2_03.png" alt="pic" class="img-responsive"></a></div>
                        <div class="col-xs-8 case-text">
                            <p class="date">12.02.16</p>
                            <h4>Perkins+Will设计的浙北医学中心项目赢得中国十佳医院大奖</h4>
                            <div class="text">
                            <p>市更新的成功和可持续型城市的形成需要文化领域、环保领域和经济领域的响应。我们的城市建筑师与不同领域的设计专业</p>
                            </div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <div class="col-xs-4 case-pic"><a href="<%=baseUrl%>/client/news/1"><img src="<%=baseUrl%>/static/common/client/images/news/news-pic3_03.png" alt="pic" class="img-responsive"></a></div>
                        <div class="col-xs-8 case-text">
                            <p class="date">12.02.16</p>
                            <h4>perkins+will首获生态建筑挑战认证</h4>
                            <div class="text">
                                <p>市更新的成功和可持续型城市的形成需要文化领域、环保领域和经济领域的响应。我们的城市建筑师与不同领域的设计专业</p>
                            </div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <div class="col-xs-4 case-pic"><a href="<%=baseUrl%>/client/news/1"><img src="<%=baseUrl%>/static/common/client/images/news/news-pic1_03.png" alt="pic" class="img-responsive"></a></div>
                        <div class="col-xs-8 case-text">
                            <p class="date">12.02.16</p>
                            <h4>perkins+will首获生态建筑挑战认证</h4>
                            <div class="text">
                                <p>市更新的成功和可持续型城市的形成需要文化领域、环保领域和经济领域的响应。我们的城市建筑师与不同领域的设计专业</p>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="col-sm-12">
                <nav class="pull-right">
                    <ul class="pagination">
                        <li class="disabled"><a href="#">&laquo;</a></li>
                        <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#">&raquo;</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
    <jsp:include page="../shared/_footer.jsp"></jsp:include>
</body>
<script type="text/javascript" src="<%=baseUrl%>/static/lib/bower_components/jquery/dist/jquery.min.js"></script>
<script type="text/javascript" src="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=baseUrl%>/static/common/client/js/sites_show.js"></script>
<script type="text/javascript" src="<%=baseUrl%>/static/common/client/js/news.js"></script>
</html>