<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

    <!-- Sidebar Menu -->
    <ul class="sidebar-menu">
      <li class="header">HEADER</li>
      <!-- Optionally, you can add icons to the links -->
      <li><a href="<%=baseUrl%>/admin/navMenus"><i class="fa fa-bars" aria-hidden="true"></i><span>二级导航</span></a></li>
      <li><a href="<%=baseUrl%>/admin/projects"><i class="fa fa-line-chart" aria-hidden="true"></i><span>项目列表</span></a></li>
      <li><a href="<%=baseUrl%>/admin/teams"><i class="fa fa-users" aria-hidden="true"></i><span>团队介绍</span></a></li>
      <li><a href="#"><i class="fa fa-newspaper-o" aria-hidden="true"></i>新闻动态</span></a></li>
      <li><a href="#"><i class="fa fa-search" aria-hidden="true"></i><span>招聘信息</span></a></li>
      <li><a href="#"><i class="fa fa-link"></i><span>关于AUD</span></a></li>
      <li><a href="<%=baseUrl%>/admin/ued/new"><i class="fa fa-newspaper-o" aria-hidden="true"></i>ued测试</span></a></li>
    </ul>
    <!-- /.sidebar-menu -->
  </section>
  <!-- /.sidebar -->
</aside>