<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String baseUrl = request.getContextPath(); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
                   <c:forEach var="newsNavMenu" items="${newsNavMenus}" varStatus="status">
                     <c:if test="${status.index==0}">
                       <li><a href="${pageContext.request.contextPath}/client/newsCategories/${newsNavMenu.id}/news" class="news-active">${newsNavMenu.name}<span>></span></a></li>
                     </c:if>
                     <c:if test="${status.index!=0}">
                       <li><a href="${pageContext.request.contextPath}/client/newsCategories/${newsNavMenu.id}/news">${newsNavMenu.name}<span>></span></a></li>
                     </c:if>
                   </c:forEach>
                </ul>
            </div>
            <div class="col-sm-9">
                <ul class="nav more-case">
                  <c:forEach var="newItem" items="${news}">
                    <li class="clearfix">
                        <div class="col-xs-4 case-pic">
                          <a href="<%=baseUrl%>/client/news/1">
                            <img src="${pageContext.request.contextPath}/${newItem.headImg}" alt="pic" class="img-responsive">
                          </a>
                        </div>
                        <div class="col-xs-8 case-text">
                            <p class="date">${newItem.publishAt}</p>
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