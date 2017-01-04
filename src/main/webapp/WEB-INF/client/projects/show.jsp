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
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/case-details.css">
<title>案例详情</title>
</head>
<body>
    <jsp:include page="../shared/_header.jsp"></jsp:include>
    <div class="main container">
        <section>
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="<%=baseUrl%>/static/common/client/images/sites/01.jpg" alt="pic" class="img-responsive">
                </div>
                <div class="item">
                    <img src="<%=baseUrl%>/static/common/client/images/sites/02.jpg" alt="pic" class="img-responsive">
                </div>
                <div class="item">
                    <img src="<%=baseUrl%>/static/common/client/images/sites/03.jpg" alt="pic" class="img-responsive">
                </div>
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
                <div class="col-sm-12 col-lg-8">
                    <div class="title">
                        <h2>${project.zhName}</h2>
                        <h3>${project.cnName}</h3>
                        <h4>${project.address}</h4>
                    </div>
                    <div class="content">
                        <p>${project.content}</p>
                    </div>
                    <div class="design">
                        <h4><a href="#">设计师</a></h4>
                        <div class="col-sm-4 design-pic"><a href="#"><img src="<%=baseUrl%>/static/common/client/images/case-details/case5_03.png" alt="pic" class="img-responsive"><p>Leo Alvorea</p><p>景观设计</p></a></div>
                        <div class="col-sm-4 design-pic"><a href="#"><img src="<%=baseUrl%>/static/common/client/images/case-details/case6_05.png" alt="pic" class="img-responsive"><p>Janice Barnes</p><p>规划 + 战略</p></a></div>
                        <div class="col-sm-4 design-pic"><a href="#"><img src="<%=baseUrl%>/static/common/client/images/case-details/case7_05.png" alt="pic" class="img-responsive"><p>Carolyn BaRoss</p><p>室内医疗设计</p></a></div>
                    </div>
                </div>

                <div class="col-sm-12 col-lg-4">
                   <ul class="nav more-case">
                       <li><a href="<%=baseUrl%>/client/projects">更多案例</a></li>
                       <c:forEach var="project" items="${projects}">
                         <li class="clearfix">
                           <div class="col-xs-5 case-pic">
                             <a href="<%=baseUrl%>/client/projects/${project.id}">
                               <img src="<%=baseUrl%>/static/common/client/images/case-details/case1_03.png" alt="pic" class="img-responsive"></a>
                             </div>
                             <div class="col-xs-7 case-text" style="font-size: 12px;"><a href="<%=baseUrl%>/client/projects/${project.id}">${project.zhName}</a></div>
                         </li>
                       </c:forEach>
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