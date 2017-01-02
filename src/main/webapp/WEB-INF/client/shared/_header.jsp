<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String baseUrl = request.getContextPath(); %>

  <header>
        <div class="container">
            <nav class="navbar navbar-default nav_one" role="navigation">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#"><img alt="Brand" src="<%=baseUrl%>/static/common/client/images/sites/pic1_02.png"></a>
                </div>
                <div class=" Main-me">
                   <div class="dropdown-toggle" data-toggle="dropdown">Main-me</div>
                      <ul class="dropdown-menu" role="menu">
                         <li>项目案例</li>
                         <li>--城市设计</li>
                         <li><a href="<%=baseUrl%>/client/projects/1">--城市绿地竞赛</a></li>
                         <li><a href="<%=baseUrl%>/client/projects/1">--中信泰富神州半岛</a></li>
                         <li>--城市综合体</li>
                         <li><a href="<%=baseUrl%>/client/projects/1">--昆明山水新城</a></li>
                         <li><a href="<%=baseUrl%>/client/projects/1">--南京永嘉</a></li>
                         <li>--塔楼</li>
                         <li><a href="<%=baseUrl%>/client/projects/1">--HRB tower</a></li>
                         <li><a href="<%=baseUrl%>/client/projects/1">--百荣百尚——雅加达</a></li>
                         <li>--室内设计</li>
                         <li><a href="<%=baseUrl%>/client/projects/1">--华润萧山万象会</a></li>
                         <li><a href="<%=baseUrl%>/client/projects/1">--哈尔滨欢乐颂</a></li>
                         <li>团队介绍</li>
                         <li><a href="<%=baseUrl%>/client/projects/1">--建筑设计团队</a></li>
                         <li><a href="<%=baseUrl%>/client/projects/1">--室内设计团队</a></li>
                         <li>新闻动态</li>
                         <li><a href="<%=baseUrl%>/client/projects/1">--Ongoing项目</a></li>
                         <li><a href="<%=baseUrl%>/client/projects/1">--公司动态</a></li>
                         <li>关于AUD</li>
                         <li><a href="<%=baseUrl%>/client/projects/1">--公司历史介绍</a></li>
                         <li><a href="<%=baseUrl%>/client/projects/1">--公司服务范围</a></li>
                         <li><a href="<%=baseUrl%>/client/projects/1">--联系我们</a></li>
                         <li>招聘信息</li>
                       </ul>
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
                <div class="btn-group change-language">
                    <button type="button" class="btn btn-default btn-xs dropdown-toggle btn-language" data-toggle="dropdown">
                        	简体中文 <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#">简体中文</a></li>
                        <li><a href="#">English</a></li>
                    </ul>
                </div>
            </nav>

            <nav class="navbar navbar-default nav_two" role="navigation">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="#">
                            <img width="112px" alt="Brand" src="<%=baseUrl%>/static/common/client/images/sites/pic2_03.png">
                        </a>
                    </div>
                        <ul class="nav navbar-nav ul_two" data-tag="1">
                            <li>
                                <a href="#" class="second-nav">城市设计</a>
                                <ul class="nav ul-three">
                                    <li><a href="<%=baseUrl%>/client/projects/1">城市绿地竞赛</a></li>
                                    <li><a href="<%=baseUrl%>/client/projects/1">中信泰富神州半岛</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#" class="second-nav">城市综合体</a>
                                <ul class="nav ul-three">
                                    <li><a href="<%=baseUrl%>/client/projects/1">昆明山水新城</a></li>
                                    <li><a href="<%=baseUrl%>/client/projects/1">南京永嘉</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#" class="second-nav">塔楼</a>
                                <ul class="nav ul-three">
                                    <li><a href="<%=baseUrl%>/client/projects/1">HRB tower</a></li>
                                    <li><a href="<%=baseUrl%>/client/projects/1">百荣百尚——雅加达</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#" class="second-nav">室内设计</a>
                                <ul class="nav ul-three">
                                    <li><a href="<%=baseUrl%>/client/projects/1">华润萧山万象会</a></li>
                                    <li><a href="<%=baseUrl%>/client/projects/1">哈尔滨欢乐颂</a></li>
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
                        <form class="search-form">
                            <div class="search-input clearfix">
                                <label class="pull-right"><span class="glyphicon glyphicon-search"></span></label>
                                <input type="text" class="form-control pull-right" id="inputText">
                            </div>
                        </form>
            </nav>
        </div>
    </header>