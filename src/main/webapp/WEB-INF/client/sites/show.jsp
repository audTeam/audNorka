<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String baseUrl = request.getContextPath(); %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/sites_show.css">
<title>首页</title>
</head>
<body>
    <header>
        <div class="container">
            <nav class="navbar navbar-default nav_one" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#topBar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"><img alt="Brand" src="<%=baseUrl%>/static/common/client/images/sites/pic1_02.png"></a>
                </div>
                <div id="topBar" class="collapse navbar-collapse" >
                    <ul class="nav navbar-nav ul_one">
                        <li><a href="<%=baseUrl%>/client/projects"><span data-tag="0">项目案例</span></a></li>
                        <li><a href="<%=baseUrl%>/client/teams"><span data-tag="1">团队介绍</span></a></li>
                        <li><a href="<%=baseUrl%>/client/news"><span data-tag="2">新闻动态</span></a></li>
                        <li><a href="<%=baseUrl%>/client/aboutUs"><span data-tag="3">关于AUD</span></a></li>
                        <li><a href="<%=baseUrl%>/client/jobs"><span data-tag="4">招聘信息</span></a></li>
                    </ul>
                </div>
            </nav>

            <nav class="navbar navbar-default nav_two" role="navigation">

                    <div class="navbar-header">
                        <a class="navbar-brand" href="#">
                            <img width="112px" alt="Brand" src="<%=baseUrl%>/static/common/client/images/sites/pic2_03.png">
                        </a>
                    </div>
                    <div class="collapse navbar-collapse">
                        <ul class="nav navbar-nav ul_two" data-tag="1">
                            <li>
                                <a href="#" class="second-nav">城市设计</a>
                                <ul class="nav ul-three">
                                    <li><a href="#">城市绿地竞赛</a></li>
                                    <li><a href="#">中信泰富神州半岛</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#" class="second-nav">城市综合体</a>
                                <ul class="nav ul-three">
                                    <li><a href="#">昆明山水新城</a></li>
                                    <li><a href="#">南京永嘉</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#" class="second-nav">塔楼</a>
                                <ul class="nav ul-three">
                                    <li><a href="#">HRB tower</a></li>
                                    <li><a href="#">百荣百尚——雅加达</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#" class="second-nav">室内设计</a>
                                <ul class="nav ul-three">
                                    <li><a href="#">华润萧山万象会</a></li>
                                    <li><a href="#">哈尔滨欢乐颂</a></li>
                                </ul>
                            </li>
                        </ul>
                        <ul class="nav navbar-nav ul_two" data-tag="2">
                            <li><a href="#" class="second-nav">建筑设计团队</a></li>
                            <li><a href="#" class="second-nav">室内设计团队</a></li>
                        </ul>
                        <ul class="nav navbar-nav ul_two" data-tag="3">
                            <li><a href="#" class="second-nav">Ongoing项目</a></li>
                            <li><a href="#" class="second-nav">公司动态</a></li>
                        </ul>
                        <ul class="nav navbar-nav ul_two" data-tag="4">
                            <li><a href="#" class="second-nav">公司历史介绍</a></li>
                            <li><a href="#" class="second-nav">公司服务范围</a></li>
                            <li><a href="#" class="second-nav">联系我们</a></li>
                        </ul>
                        <form>
                            <div class="searchInput clearfix">
                                <label class="pull-right"><span class="glyphicon glyphicon-search"></span></label>
                                <input type="text" class="form-control pull-right" id="inputText">
                            </div>
                        </form>
                    </div>
            </nav>

        </div>

    </header>
    <div class="main container">
        <section>
            <img src="images/pic3_03.png" alt="pic"  class="img-responsive">
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
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-6 list-one">
                    <ul class="list-group clearfix">
                        <li>友情链接:</li>
                        <li><a href="#">百度</a></li>
                        <li><a href="#">腾讯新闻</a></li>
                        <li><a href="#">中国建筑网</a></li>
                        <li><a href="#">中国建筑论坛</a></li>
                    </ul>
                </div>
                <div class="col-lg-6 list-two">
                    <ul class="list-group clearfix">
                        <li class="pull-right">Copyright 2014-2016 AUD建筑设计有限公司 蜀ICP备 16012568号</li>
                    </ul>
                </div>
            </div>
        </div>

    </footer>
</body>
<script type="text/javascript" src="<%=baseUrl%>/static/lib/bower_components/jquery/dist/jquery.min.js"></script>
<script type="text/javascript" src="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=baseUrl%>/static/common/client/js/sites_show.js"></script>
</html>