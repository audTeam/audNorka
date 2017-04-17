<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/company-introduce.css">
<title>公司介绍</title>
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
    <section class="part_two">
        <div class="row">
            <div class="col-md-2 col-xs-12 col-xs-offset-1 col-md-offset-0">
                <ul class="company-service">
                    <li class="title-text">Our Service</li>
                    <li><img src="<%=baseUrl%>/static/common/client/images/sites/company.png" alt="pic" class="img-responsive"></li>
                    <li>Urban Planning & Design</li>
                    <li><img src="<%=baseUrl%>/static/common/client/images/sites/company.png" alt="pic" class="img-responsive"></li>
                    <li>Urban Planning & Design</li>
                    <li><img src="<%=baseUrl%>/static/common/client/images/sites/company.png" alt="pic" class="img-responsive"></li>
                    <li>Urban Planning & Design</li>
                </ul>
            </div>
            <div class="col-md-6 col-xs-12 col-xs-offset-1 col-md-offset-1">
                <ul>
                    <li class="title-text company-profile">Company Profile</li>
                    <li class="content-text">The predecessor of AUD </li>
                    <li class="content-text">The founder Mr.GUO</li>
                    <li class="content-text video">
                        <embed src="http://player.youku.com/player.php/sid/XMjU1MDc1MzU4MA==/v.swf" allowfullscreen="true" quality="high" width="100%" height="400" align="middle" allowscriptaccess="always" type="application/x-shockwave-flash"></embed>
                    </li>
                </ul>

            </div>
            <div class="col-md-2 col-xs-12 col-xs-offset-1 col-md-offset-1">
                <ul class="clients">
                    <li class="title-text">Our clients</li>
                    <li><img src="<%=baseUrl%>/static/common/client/images/sites/clients-pic.png" alt="pic" class="img-responsive"></li>
                    <li><img src="<%=baseUrl%>/static/common/client/images/sites/clients-pic.png" alt="pic" class="img-responsive"></li>
                    <li><img src="<%=baseUrl%>/static/common/client/images/sites/clients-pic.png" alt="pic" class="img-responsive"></li>
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