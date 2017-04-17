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
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/project_list.css">
<title>城市设计全部案例</title>
<script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
</head>
<body>
    <jsp:include page="../shared/_header.jsp"></jsp:include>
    <div class="main container-fluid">
        <div class="row">
            <div class="col-xs-12">
                <section>
                    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                        <!-- Wrapper for slides -->
                        <div class="carousel-inner" role="listbox">
                          <c:forEach items="${banners}" var="banner" varStatus="status">
                            <c:if test="${status.index==0}">
                              <div class="item active">
                                <img src="<%=application.getInitParameter("imageServer")%>/${banner.imgUrl}" alt="pic" class="img-responsive">
                                <div class="carousel-caption">
                                    <h1>${banner.name }</h1>
                                    <h3>${banner.address }</h3>
                                </div>
                              </div>
                            </c:if>
                            <c:if test="${status.index!=0}">
                              <div class="item">
                                <img src="<%=application.getInitParameter("imageServer")%>/${banner.imgUrl}" alt="pic" class="img-responsive">
                                <div class="carousel-caption">
                                    <h1>${banner.name }</h1>
                                    <h3>${banner.address }</h3>
                                </div>
                              </div>
                            </c:if>
                          </c:forEach>
                        </div>
                        <!-- Controls -->
                        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                            <span class="icon-prev"></span>
                            <span class="sr-only" style="color:#fff;">Previous</span>
                        </a>
                        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                            <span class="icon-next"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </section>
            </div>
        </div>
        <section class="part-one">
            <div class="row all-case">
              <c:forEach var="item" items="${collection }">
                <div class="col-sm-3">
                  <a href="<%=baseUrl%>/client/projects/${item.project.id}">
                    <img src="<%=application.getInitParameter("imageServer")%>/${item.images[0].imgUrl}" alt="pic" class="img-responsive">
                  </a><a href="#">
                  <h5>${item.project.name}</h5></a>
                  <h6 class="address">${item.project.address}</h6></div>
              </c:forEach>
                <div class="col-sm-12 view_more">
                    <a href="#">查看更多</a>
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