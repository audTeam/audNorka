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
<meta name="viewport" content="width=320,maximum-scale=1.3,user-scalable=no">
<link rel="stylesheet" href="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/shared_show.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/phone.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/news.css">
<title>新闻动态</title>
<!-- <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script> -->
</head>
<body>
  <jsp:include page="../shared/_header.jsp"></jsp:include>
    <div id="base-url" data-base-url="<%=baseUrl%>" class="hidden"></div>
    <div class="main container-fluid">
      <div class="row">
        <div class="col-md-12">
            <ul>
                <li>
                    <h3>${currentNew.title}</h3>
                    <h4>${currentNew.subTitle }</h4>
                </li>
                <li>
                  <fmt:formatDate value="${currentNew.publishAt}" pattern="yyyy-M-d"/> ${currentNew.author }
                </li>
            </ul>
        </div>
        <div class="col-md-7">
            ${currentNew.content }
        </div>
        <div class="col-md-3 col-md-offset-2">
            <ul class="col-md-12">
                <li class="col-md-2 col-xs-2 share-icon"><a href="#"><img src="<%=baseUrl%>/static/common/client/images/sites//Messages icon.png"></a></li>
                <li class="col-md-2 col-xs-2 share-icon"><a href="#"><img src="<%=baseUrl%>/static/common/client/images/sites//Messages icon.png"></a></li>
                <li class="col-md-2 col-xs-2 share-icon"><a href="#"><img src="<%=baseUrl%>/static/common/client/images/sites//Messages icon.png"></a></li>
                <li class="col-md-2 col-xs-2 share-icon"><a href="#"><img src="<%=baseUrl%>/static/common/client/images/sites//Messages icon.png"></a></li>
            </ul>
            <ul id="newsContainer" class="col-md-12 col-xs-12">
                <li class="first-title">Recent News</li>
                <c:forEach var="newItem" items="${pages.list}">
                  <li>
                    <a href="<%=baseUrl%>/client/news?id=${newItem.id }">
                      <h5>${newItem.title}</h5><h5>${newItem.author}</h5>
                    </a>
                    <h6><fmt:formatDate value="${newItem.publishAt}" pattern="yyyy-M-d"/></h6>
                  </li>
                </c:forEach>
            </ul>
            <ul class="col-md-12 col-xs-12">
                <li id="loadMoreButton" class="view-more" style="cursor:pointer;">VIEW MORE</li>
            </ul>
            
            <c:set value="${ fn:split(currentNew.tags, '；') }" var="tags" />
            <ul class="col-md-12 col-xs-12">
                <li class="first-title">Tages</li>
                <li><h5>
                  <c:forEach var="tag" items="${tags}">
                    ${tag}
                  </c:forEach>
                </h5></li>
            </ul>
        </div>
    </div>
    </div>
    <jsp:include page="../shared/_footer.jsp"></jsp:include>
</body>
<script type="text/javascript" src="<%=baseUrl%>/static/lib/bower_components/jquery/dist/jquery.min.js"></script>
<script type="text/javascript" src="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=baseUrl%>/static/common/client/js/sites_show.js"></script>
<script type="text/javascript" src="<%=baseUrl%>/static/common/client/js/news.js"></script>
<script type="text/javascript" src="<%=baseUrl%>/static/common/client/js/news_show.js"></script>
</html>