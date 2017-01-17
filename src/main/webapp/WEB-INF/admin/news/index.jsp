<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt " %> --%>

<%String baseUrl = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AUD管理系统</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <c:import url="../shared/_stylesheet.jsp"></c:import>
</head>

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
  <jsp:include page="../shared/_header.jsp"></jsp:include>
  <jsp:include page="../shared/_aside.jsp"></jsp:include>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>新闻动态</h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
        <li class="active">Here</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Your Page Content Here -->
      <div class="box">
        <div class="box-body">
          <div class="row">
            <div class="col-md-12">
              <a href="<%= baseUrl%>/admin/newsCategories/${newsCategory.id}/news/new" class="btn btn-info col-md-offset-10">发布新闻</a>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12">
              <table class="table table-striped table-hover">
                <tr>
                  <td>#</td>
                  <td>标题</td>
                  <td>发布日期</td>
                  <td>操作</td>
                </tr>
<<<<<<< HEAD
                <c:forEach var="new" items="${news}">
                <tr>
                  <td>${new.id}</td>
                  <td>${new.title}</td>
                  <td>${new.published_at}</td>
                  <td>${new.read_count}</td>
                  <td>删除</td>
                </tr>
=======
                <c:forEach var="newItem" items="${news}">
                  <tr>
                    <td>${newItem.id}</td>
                    <td>${newItem.title}</td>
                    <%-- <td><fmt:formatDate value="${newItem.publishAt}" type="both" /></td> --%>
                    <td>${newItem.publishAt}</td>
                    <td><a href="">编辑</a>/<a href="">删除</a></td>
                  </tr>
>>>>>>> 04c2c69578540d168f5425df197c9f6c7ad5e2ae
                </c:forEach>
              </table>
            </div> 
          </div>
        </div>
      </div>

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <jsp:include page="../shared/_footer.jsp"></jsp:include>
  <jsp:include page="../shared/_left_aside.jsp"></jsp:include>
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- REQUIRED JS SCRIPTS -->

<c:import url="../shared/_javascript.jsp"></c:import>

</body>
</html>
