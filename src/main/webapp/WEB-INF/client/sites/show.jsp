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
  <div class="AudIndex container-fluid">
    <header>
      <nav class="navbar navbar-default nav_one">
        <div class="container-fluid">
          <div class="navbar-header">
            <a class="navbar-brand" href="#"> <img alt="Brand" src="<%=baseUrl%>/static/common/client/images/sites/pic1_02.png">
            </a>
          </div>
          <ul class="nav navbar-nav ul_one">
            <li><a href="<%=baseUrl%>/client/projects"><span data-tag="0">项目案例</span></a></li>
            <li><a href="<%=baseUrl%>/client/teams"><span data-tag="1">团队介绍</span></a></li>
            <li><a href="<%=baseUrl%>/client/news"><span data-tag="2">新闻动态</span></a></li>
            <li><a href="<%=baseUrl%>/client/aboutUs"><span data-tag="3">关于AUD</span></a></li>
            <li><a href="<%=baseUrl%>/client/jobs"><span data-tag="4">招聘信息</span></a></li>
          </ul>
        </div>
      </nav>
      <nav class="navbar navbar-default nav_two">
        <div class="container-fluid">
          <div class="navbar-header">
            <a class="navbar-brand" href="#"> <img width="112px" alt="Brand" src="<%=baseUrl%>/static/common/client/images/sites/pic2_03.png">
            </a>
          </div>
          <ul class="nav navbar-nav ul_two" data-tag="1">
            <li><a href="#">城市设计</a></li>
            <li><a href="#">城市综合体</a></li>
            <li><a href="#">塔楼</a></li>
            <li><a href="#">室内设计</a></li>
          </ul>
          <ul class="nav navbar-nav ul_two" data-tag="2">
            <li><a href="#">建筑设计团队</a></li>
            <li><a href="#">室内设计团队</a></li>
          </ul>
          <ul class="nav navbar-nav ul_two" data-tag="3">
            <li><a href="#">Ongoing项目</a></li>
            <li><a href="#">公司动态</a></li>
          </ul>
          <ul class="nav navbar-nav ul_two" data-tag="4">
            <li><a href="#">公司历史介绍</a></li>
            <li><a href="#">公司服务范围</a></li>
            <li><a href="#">联系我们</a></li>
          </ul>
          <form>
            <div class="searchInput clearfix">
              <label class="pull-right"><span class="glyphicon glyphicon-search"></span></label> <input type="text" class="form-control pull-right" id="inputText">
            </div>
          </form>
        </div>
      </nav>
    </header>
    <div class="main">
      <section>
        <img src="<%=baseUrl%>/static/common/client/images/sites/pic3_03.png" alt="pic" width="980px">
      </section>
      <section class="part_two">
        <div class="row">
          <div class="col-lg-3">
            <img src="<%=baseUrl%>/static/common/client/images/sites/pic4_03.png" alt="pic" width="223px">
            <div class="text">
              <a href="#">
                <p class="text-one">中国区总经理吕羽荣膺美国城市土地会40名40岁以下青年精英奖</p>
                <p class="text-two">中国区总经理吕羽荣膺美国城市土地会40名40岁以下青年精英奖</p>
              </a>
              <p class="news">
                <a href="#">[NEWS]</a>
              </p>
            </div>
          </div>

          <div class="col-lg-3">
            <img src="<%=baseUrl%>/static/common/client/images/sites/pic5_03.png" alt="pic" width="223px">
            <div class="text">
              <a href="#">
                <p class="text-one">中国区总经理吕羽荣膺美国城市土地会40名40岁以下青年精英奖</p>
                <p class="text-two">中国区总经理吕羽荣膺美国城市土地会40名40岁以下青年精英奖</p>
              </a>
              <p class="news">
                <a href="#">[NEWS]</a>
              </p>
            </div>
          </div>
          <div class="col-lg-3">
            <img src="<%=baseUrl%>/static/common/client/images/sites/pic6_03.png" alt="pic" width="223px">
            <div class="text">
              <a href="#">
                <p class="text-one">中国区总经理吕羽荣膺美国城市土地会40名40岁以下青年精英奖</p>
                <p class="text-two">中国区总经理吕羽荣膺美国城市土地会40名40岁以下青年精英奖</p>
              </a>
              <p class="news">
                <a href="#">[NEWS]</a>
              </p>
            </div>
          </div>
          <div class="col-lg-3">
            <img src="<%=baseUrl%>/static/common/client/images/sites/pic7_03.png" alt="pic" width="223px">
            <div class="text">
              <a href="#">
                <p class="text-one">中国区总经理吕羽荣膺美国城市土地会40名40岁以下青年精英奖</p>
                <p class="text-two">中国区总经理吕羽荣膺美国城市土地会40名40岁以下青年精英奖</p>
              </a>
              <p class="news">
                <a href="#">[NEWS]</a>
              </p>
            </div>
          </div>
        </div>
      </section>
    </div>
    <footer>
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
    </footer>
  </div>
</body>
<script type="text/javascript" src="<%=baseUrl%>/static/lib/bower_components/jquery/dist/jquery.min.js"></script>
<script type="text/javascript" src="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=baseUrl%>/static/common/client/js/sites_show.js"></script>
</html>