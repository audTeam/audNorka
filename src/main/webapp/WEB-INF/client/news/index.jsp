<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String baseUrl = request.getContextPath(); %>

<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/shared_show.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/news.css">
<title>新闻动态</title>
<script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
</head>
<body>
  <jsp:include page="../shared/_header.jsp"></jsp:include>
    <div class="main container">
        <div class="row">
            <div class="col-sm-3">
                <ul class="nav news-tag">
                    <li><a href="#" class="news-active">最新动态<span>></span></a></li>
                    <li><a href="#">项目动态<span>></span></a></li>
                    <li><a href="<%=baseUrl%>/client/news/1">公司动态<span>></span></a></li>
                </ul>
            </div>
            <div class="col-sm-9">
                <ul class="nav more-case">
                  <c:forEach var="newItem" items="${pages.list}">
                    <li class="clearfix">
                        <div class="col-xs-4 case-pic"><a href="<%=baseUrl%>/client/news/1"><img src="${pageContext.request.contextPath}/${newItem.headImg}" alt="pic" class="img-responsive"></a></div>
                        <div class="col-xs-8 case-text">
                            <p class="date">12.0.6</p>
                            <h4>${newItem.title}</h4>
                            <div class="text">
                                <p>${newItem.subTitle}</p>
                            </div>
                        </div>
                    </li>
                    </c:forEach>
                </ul>
            </div>
            <div class="col-sm-12">
              <c:import url="../shared/_page.jsp">
                <c:param name="pageUrl" value="${pageContext.request.contextPath}/client/newsCategories/${newItem.id}"></c:param>
              </c:import>
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