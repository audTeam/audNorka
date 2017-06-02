<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>

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
        <p>${sessionScope.name}</p>
        <!-- Status -->
        <c:choose>
          <c:when test="${pageContext.response.locale=='zh_CN'}">
            <a href="${pageContext.request.contextPath}/admin/dashborad?lang=en_US">
          </c:when>
          <c:when test="${pageContext.response.locale=='en_US'}">
            <a href="${pageContext.request.contextPath}/admin/dashborad?lang=zh_CN">
          </c:when>
        </c:choose>
          <i class="fa fa-circle text-success"></i>
                        切换为${pageContext.response.locale=='zh_CN'?'英语':'中文'}
        </a>
      </div>
    </div>

    <!-- search form (Optional) -->
    <form action="#" method="get" class="sidebar-form hidden">
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
    <ul class="sidebar-menu">
      <li class="${currentModule=='7'?'active':''}">
        <a href="<%=baseUrl%>/admin/dashborad">
          <i class="fa fa-home" aria-hidden="true"></i>
          <span>首页</span>
        </a>
      </li>
      <li <c:if test="${fn:contains(currentUrl, 'banners')}">class="active"</c:if> >
        <a href="<%=baseUrl%>/admin/banners">
          <i class="fa fa-bars" aria-hidden="true"></i>
          <span>首页轮播</span>
        </a>
      </li>
      <li class="treeview ${(currentModule=='21'||currentModule=='22')?'active':''}">
        <a href="#"><i class="fa fa-link"></i><span>项目案例</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li class="${currentModule=='21'?'active':''}"><a href="<%=baseUrl%>/admin/projectBanners"><span>轮播图管理</span></a></li>
          <li class="${currentModule=='22'?'active':''}"><a href="<%=baseUrl%>/admin/projectCases"><span>案例管理</span></a></li>
        </ul>
      </li>
      <li class="treeview ${(currentModule=='31'||currentModule=='32'||currentModule=='33'||currentModule=='34')?'active':''}">
        <a href="#"><i class="fa fa-link"></i><span>关于我们</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li class="${currentModule=='31'?'active':''}"><a href="<%=baseUrl%>/admin/companyBanners"><span>轮播图管理</span></a></li>
          <li class="${currentModule=='32'?'active':''}"><a href="<%=baseUrl%>/admin/aboutUs/historyIntroduce"><span>公司简介管理</span></a></li>
          <li class="${currentModule=='33'?'active':''}"><a href="<%=baseUrl%>/admin/teamMembers"><span>团队成员管理</span></a></li>
          <li class="${currentModule=='34'?'active':''}"><a href="<%=baseUrl%>/admin/companyServices"><span>服务内容管理</span></a></li>
        </ul>
      </li>
      <li class="${currentModule=='4'?'active':''}">
        <a href="<%=baseUrl%>/admin/news">
          <i class="fa fa-newspaper-o" aria-hidden="true"></i>
          <span>新闻动态</span>
        </a>
      </li>
      <li class="${currentModule=='5'?'active':''}">
        <a href="<%=baseUrl%>/admin/categories">
          <i class="fa fa-newspaper-o" aria-hidden="true"></i>
          <span>工作机会</span>
        </a>
      </li>
      <li class="${currentModule=='6'?'active':''}">
        <a href="<%=baseUrl%>/admin/contactUsPage/edit">
          <i class="fa fa-newspaper-o" aria-hidden="true"></i>
          <span>联系我们</span>
        </a>
      </li>
      <shiro:hasRole name="admin">
        <li class="${currentModule=='8'?'active':''}">
          <a href="<%=baseUrl%>/admin/users">
            <i class="fa fa-users" aria-hidden="true"></i>
            <span>用户管理</span>
          </a>
        </li>
      </shiro:hasRole>
    </ul>
    <!-- /.sidebar-menu -->
  </section>
  <!-- /.sidebar -->
</aside>