<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<% String baseUrl = request.getContextPath(); %>

<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">

  <!-- sidebar: style can be found in sidebar.less -->
  <section class="sidebar">

    <!-- Sidebar user panel (optional) -->
    <div class="user-panel">
      <div class="pull-left image">
        <img src="<%=baseUrl%>/static/lib/bower_components/AdminLTE/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
      </div>
      <div class="pull-left info">
        <p>Alexander Pierce</p>
        <!-- Status -->
        <a class="hidden" href="#"><i class="fa fa-circle text-success"></i> Online</a>
      </div>
    </div>

    <!-- search form (Optional) -->
    <form action="#" method="get" class="sidebar-form">
      <div class="input-group">
        <input type="text" name="q" class="form-control" placeholder="Search...">
            <span class="input-group-btn">
              <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
              </button>
            </span>
      </div>
    </form>
    <!-- /.search form -->
    <c:set var="currentUrl" value="${pageContext.request.requestURL }" />
    <!-- Sidebar Menu -->
    <ul class="sidebar-menu">
      <li class="header">HEADER</li>
      <!-- Optionally, you can add icons to the links -->
      <li <c:if test="${fn:contains(currentUrl, 'banners')}">class="active"</c:if> >
        <a href="<%=baseUrl%>/admin/banners">
          <i class="fa fa-bars" aria-hidden="true"></i>
          <span>banner设置</span>
        </a>
      </li>
      <li class="hidden"><a href="<%=baseUrl%>/admin/navMenus"><i class="fa fa-bars" aria-hidden="true"></i><span>二级导航</span></a></li>
      <li <c:if test="${fn:contains(currentUrl, 'projectCases')}">class="active"</c:if> >
        <a href="<%=baseUrl%>/admin/projectCases">
          <i class="fa fa-line-chart" aria-hidden="true"></i>
          <span>案例管理</span>
        </a>
      </li>
      <%-- <li class="treeview">
        <a href="#"><span>案例管理</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li><a href="#">Link in level 2</a></li>
          <li><a href="<%=baseUrl%>/admin/projects"><span>项目列表</span></a></li>
          <li><a href="#">Link in level 2</a></li>
        </ul>
      </li> --%>
      <li <c:if test="${fn:contains(currentUrl, 'teams')}">class="active"</c:if> >
        <a href="<%=baseUrl%>/admin/teams"><i class="fa fa-users" aria-hidden="true"></i>
          <span>团队介绍</span>
        </a>
      </li>
      <li <c:if test="${fn:contains(currentUrl, 'news')}">class="active"</c:if> >
        <a href="<%=baseUrl%>/admin/newsCategories">
          <i class="fa fa-newspaper-o" aria-hidden="true"></i>
          <span>新闻动态</span>
        </a>
      </li>
      <li><a href="#"><i class="fa fa-search" aria-hidden="true"></i><span>招聘信息</span></a></li>
      <li><a href="#"><i class="fa fa-link"></i><span>关于AUD</span></a></li>
    </ul>
    <!-- /.sidebar-menu -->
  </section>
  <!-- /.sidebar -->
</aside>