<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String baseUrl = request.getContextPath();
%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <header>
        <div class="container-fluid">
            <div class="row">
            <div class="col-xs-12">
            <nav class="navbar navbar-default nav_one" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#topBar" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"><img alt="Brand" src="<%=baseUrl%>/static/common/client/images/sites/Group_65.png"></a>
                </div>
                <div id="" class="collapse navbar-collapse" >
                    <ul class="nav navbar-nav ul_one">
                        <li><a href="#"><span data-tag="0">首页</span></a><img src="<%=baseUrl%>/static/common/client/images/sites/triangle.png" alt="pic" class="flg-pic current"/></li>
                        <li><a href="#"><span data-tag="1">团队介绍</span></a><img src="<%=baseUrl%>/static/common/client/images/sites/triangle.png" alt="pic" class="flg-pic"/></li>
                        <li><a href="#"><span data-tag="2">新闻动态</span></a><img src="<%=baseUrl%>/static/common/client/images/sites/triangle.png" alt="pic" class="flg-pic"/></li>
                        <li><a href="#"><span data-tag="3">关于AUD</span></a><img src="<%=baseUrl%>/static/common/client/images/sites/triangle.png" alt="pic" class="flg-pic"/></li>
                        <li><a href="#"><span data-tag="4">招聘信息</span></a><img src="<%=baseUrl%>/static/common/client/images/sites/triangle.png" alt="pic" class="flg-pic"/></li>
                    </ul>
                    <div class="change-language"><a href="#">EN</a> <a href="#">中文</a></div>
                </div>
            </nav>
            </div>
            </div>
            <nav class="navbar navbar-default nav_two" role="navigation">

                    <div class="navbar-header">
                        <a class="navbar-brand" href="#">
                            <div class="brand-pic"></div>
                        </a>
                        <a class="navbar-brand" href="#">
                            <img alt="Brand" src="<%=baseUrl%>/static/common/client/images/sites/Rectangle29.png" class="img-responsive">
                        </a>
                    </div>
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
                            <!-- <img src="images/triangle.png" alt="pic" class="flg-pic"/> -->
                            <li><a href="#" class="second-nav">Ongoing项目</a></li>
                            <li><a href="#" class="second-nav">公司动态</a></li>
                        </ul>
                        <ul class="nav navbar-nav ul_two" data-tag="4">
                            <!-- <img src="images/triangle.png" alt="pic" class="flg-pic"/> -->
                            <li><a href="#" class="second-nav">公司历史介绍</a></li>
                            <li><a href="#" class="second-nav">公司服务范围</a></li>
                            <li><a href="#" class="second-nav">联系我们</a></li>
                        </ul>
                        <form class="search-form">
                            <div class="search-input clearfix">
                                <label class="pull-right"><span class="glyphicon glyphicon-search"></span></label>
                                <input type="text" class="form-control pull-right" id="inputText" style="border:1px solid #fff;">
                            </div>
                        </form>
            </nav>
        </div>

    </header>
<!-- 
<header>
  <div class="container">
    <nav class="navbar navbar-default nav_one" role="navigation">
      <div class="navbar-header">
        <a class="navbar-brand" href="<%=baseUrl%>/sites"><img alt="Brand" src="<%=baseUrl%>/static/common/client/images/sites/pic1_02.png"></a>
      </div>
      <div class=" Main-me">
        <div class="dropdown-toggle" data-toggle="dropdown">Main-me</div>
        <ul class="dropdown-menu" role="menu">
          <li><spring:message code="projects" /></li>
          <c:forEach var="projectNavMenu" items="${projectNavMenus}">
            <li>--${projectNavMenu.secondNavMenu.name}</li>
            <c:forEach var="thridNavMenu" items="${projectNavMenu.thridNavMenu }">
              <li><a href="<%=baseUrl%>/client/projects/${thridNavMenu.id}">--${thridNavMenu.name}</a></li>
            </c:forEach>
          </c:forEach>

          <li><spring:message code="teams" /></li>
          <c:forEach var="team" items="${teams}">
            <li><a href="${pageContext.request.contextPath}/client/teams/${team.id}/teamMembers" class="second-nav">${team.name}</a></li>
          </c:forEach>
          <li><spring:message code="news" /></li>
          <c:forEach var="newsNavMenu" items="${newsNavMenus}">
        	<li><a href="<%=baseUrl%>/client/newsCategories/${newsNavMenu.id}" class="second-nav">${newsNavMenu.name}</a>
          </c:forEach>
          <li><spring:message code="aboutAud" /></li>
          <li><a href="<%=baseUrl%>/client/aboutUs">--<spring:message code="companyIntroduce" /></a></li>
          <li><a href="<%=baseUrl%>/client/aboutUs/service">--<spring:message code="companyService" /></a></li>
          <li><a href="<%=baseUrl%>/client/aboutUs/contactUs">--<spring:message code="contactUs" /></a></li>
          <li><a href="<%=baseUrl%>/client/jobs"><spring:message code="jobs" /></a></li>
        </ul>
      </div>
      <div id="topBar" class="collapse navbar-collapse">
        <ul class="nav navbar-nav ul_one">
          <li><a href="<%=baseUrl%>/client/projects"><span data-tag="0"><spring:message code="projects" /></span></a></li>
          <li><a href="<%=baseUrl%>/client/teams"><span data-tag="1"><spring:message code="teams" /></span></a></li>
          <li><a href="<%=baseUrl%>/client/newsCategories/${newsNavMenus[0].id}"><span data-tag="2"><spring:message code="news" /></span></a></li>
          <li><a href="<%=baseUrl%>/client/aboutUs"><span data-tag="3"><spring:message code="aboutAud" /></span></a></li>
          <li><a href="<%=baseUrl%>/client/jobs"><span data-tag="4"><spring:message code="jobs" /></span></a></li>
        </ul>
      </div>
      <div class="btn-group change-language">
        <button type="button" class="btn btn-default btn-xs dropdown-toggle btn-language" data-toggle="dropdown">
           ${pageContext.response.locale=='zh_CN'?'简体中文':'English'}
          <span class="caret"></span>
        </button>
        <ul class="dropdown-menu" role="menu">
          <li><a href="${pageContext.request.contextPath}/sites?lang=zh_CN">简体中文</a></li>
          <li><a href="${pageContext.request.contextPath}/sites?lang=en_US">English</a></li>
        </ul>
      </div>
    </nav>

    <nav class="navbar navbar-default nav_two" role="navigation">
      <div class="navbar-header">
        <a class="navbar-brand" href="<%=baseUrl%>/client"> <img width="112px" alt="Brand" src="<%=baseUrl%>/static/common/client/images/sites/pic2_03.png">
        </a>
      </div>
      <ul class="nav navbar-nav ul_two" data-tag="1">
        <c:forEach var="projectNavMenu" items="${projectNavMenus}">
          <li><a href="<%=baseUrl%>/client/projectCases/${projectNavMenu.secondNavMenu.id}" class="second-nav">${projectNavMenu.secondNavMenu.name}</a>
            <ul class="nav ul-three">
              <c:forEach var="thridNavMenu" items="${projectNavMenu.thridNavMenu }">
                <li><a href="<%=baseUrl%>/client/projects/${thridNavMenu.id}">${thridNavMenu.name}</a></li>
              </c:forEach>
            </ul></li>
        </c:forEach>
      </ul>
      <ul class="nav navbar-nav ul_two" data-tag="2">
        <c:forEach var="teamsNavMenus" items="${teamsNavMenus}">
        	<li><a href="<%=baseUrl%>/client/teams/${teamsNavMenus.id}" class="second-nav">${teamsNavMenus.name}</a>
        </c:forEach>
      </ul>
      <ul class="nav navbar-nav ul_two" data-tag="3">
        <c:forEach var="newsNavMenu" items="${newsNavMenus}">
        	<li><a href="<%=baseUrl%>/client/newsCategories/${newsNavMenu.id}" class="second-nav">${newsNavMenu.name}</a>
        </c:forEach>
      </ul>
      <ul class="nav navbar-nav ul_two" data-tag="4">
        <li><a href="<%=baseUrl%>/client/aboutUs" class="second-nav"><spring:message code="companyIntroduce" /></a></li>
        <li><a href="<%=baseUrl%>/client/aboutUs/service" class="second-nav"><spring:message code="companyService" /></a></li>
        <li><a href="<%=baseUrl%>/client/aboutUs/contactUs" class="second-nav"><spring:message code="contactUs" /></a></li>
      </ul>
      <form class="search-form" method="get" action="<%=baseUrl%>/client/searchs">
        <div class="search-input clearfix">
          <button class="pull-right">
            <span class="glyphicon glyphicon-search"></span>
          </button>
          <input name="keyword" type="text" class="form-control pull-right" id="inputText">
        </div>
      </form>
    </nav>
  </div>
</header>  -->