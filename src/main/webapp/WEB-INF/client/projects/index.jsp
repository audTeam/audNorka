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
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner" role="listbox">
                            <div class="item active">
                                <img src="<%=baseUrl%>/static/common/client/images/sites/cs1.jpg" alt="pic" class="img-responsive">
                                <div class="carousel-caption">
                                    <h1>Sky Garder</h1>
                                    <h3>London,UK</h3>
                                </div>
                            </div>
                            <div class="item">
                                <img src="<%=baseUrl%>/static/common/client/images/sites/cs2.jpg" alt="pic" class="img-responsive">
                            </div>
                            <div class="item">
                                <img src="<%=baseUrl%>/static/common/client/images/sites/cs3.jpg" alt="pic" class="img-responsive" >
                            </div>
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
                <div class="col-sm-3"><a href="#"><img src="images/city-design/Projects-pic.png" alt="pic" class="img-responsive"></a><a href="#"><h5>九寨白河</h5></a><h6 class="address">shanghai</h6></div>
                <div class="col-sm-3"><a href="#"><img src="images/city-design/Projects-pic.png" alt="pic" class="img-responsive"></a><a href="#"><h5>九寨白河</h5></a><h6 class="address">shanghai</h6></div>
                <div class="col-sm-3"><a href="#"><img src="images/city-design/Projects-pic.png" alt="pic" class="img-responsive"></a><a href="#"><h5>九寨白河</h5></a><h6 class="address">shanghai</h6></div>
                <div class="col-sm-3"><a href="#"><img src="images/city-design/Projects-pic.png" alt="pic" class="img-responsive"></a><a href="#"><h5>九寨白河</h5></a><h6 class="address">shanghai</h6></div>
                <div class="col-sm-3"><a href="#"><img src="images/city-design/Projects-pic.png" alt="pic" class="img-responsive"></a><a href="#"><h5>九寨白河</h5></a><h6 class="address">shanghai</h6></div>
                <div class="col-sm-3"><a href="#"><img src="images/city-design/Projects-pic.png" alt="pic" class="img-responsive"></a><a href="#"><h5>九寨白河</h5></a><h6 class="address">shanghai</h6></div>
                <div class="col-sm-3"><a href="#"><img src="images/city-design/Projects-pic.png" alt="pic" class="img-responsive"></a><a href="#"><h5>九寨白河</h5></a><h6 class="address">shanghai</h6></div>
                <div class="col-sm-3"><a href="#"><img src="images/city-design/Projects-pic.png" alt="pic" class="img-responsive"></a><a href="#"><h5>九寨白河</h5></a><h6 class="address">shanghai</h6></div>
                <div class="col-sm-3"><a href="#"><img src="images/city-design/Projects-pic.png" alt="pic" class="img-responsive"></a><a href="#"><h5>九寨白河</h5></a><h6 class="address">shanghai</h6></div>
                <div class="col-sm-3"><a href="#"><img src="images/city-design/Projects-pic.png" alt="pic" class="img-responsive"></a><a href="#"><h5>九寨白河</h5></a><h6 class="address">shanghai</h6></div>
                <div class="col-sm-3"><a href="#"><img src="images/city-design/Projects-pic.png" alt="pic" class="img-responsive"></a><a href="#"><h5>九寨白河</h5></a><h6 class="address">shanghai</h6></div>
                <div class="col-sm-3"><a href="#"><img src="images/city-design/Projects-pic.png" alt="pic" class="img-responsive"></a><a href="#"><h5>九寨白河</h5></a><h6 class="address">shanghai</h6></div>
                <div class="col-sm-12 view_more">
                    <a href="#">VIEW MORE</a>
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