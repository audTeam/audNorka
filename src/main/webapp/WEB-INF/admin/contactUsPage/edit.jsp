<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
  <link type="text/css" href="<%=baseUrl%>/static/lib/bower_components/bootstrap-fileinput/css/fileinput.min.css"></link>
  <style type="text/css">
	#l-map{height:300px;width:100%;}
	#r-result{width:100%;}
  </style>
  <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=0hZwZLTDtP2Ap7XOA1sSZUN4GaohG2ud"></script>
</head>

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
  <jsp:include page="../shared/_header.jsp"></jsp:include>
  <jsp:include page="../shared/_aside.jsp"></jsp:include>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>编辑联系我们</h1>
      <ol class="breadcrumb">
        <li><a href="<%=baseUrl%>/admin/dashborad"><i class="fa fa-dashboard"></i> 首页</a></li>
        <li>编辑联系我们</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Your Page Content Here -->
      <div class="box">
        <div class="box-body">
          <div class="row">
            <div class="col-md-12">
				<form class="form-horizontal" method="post" action="<%= baseUrl%>/admin/contactUsPage/update">
     		      <input type="hidden" name="id" value="${contactUsPage.id}">
				  <div class="form-group">
				    <label class="col-md-2 control-label">公司地址</label>
				    <div class="col-md-9">
				      <input type="text" name="address" value="${contactUsPage.address}" class="form-control">
				    </div>
				  </div>
				 <div class="form-group">
				    <label class="col-md-2 control-label">公司电话</label>
				    <div class="col-md-9">
				      <input type="text" name="tel" value="${contactUsPage.tel}" class="form-control"> 
				    </div>
				  </div>
				 <div class="form-group">
				    <label class="col-md-2 control-label">公司位置</label>
				    <div class="col-md-9">
	                  <div id="r-result"><input type="text" id="suggestId" size="20" value="" style="width:100%;" /></div>
				      <div id="searchResultPanel" style="border:1px solid #C0C0C0;width:150px;height:auto; display:none;"></div>
				      <div id="l-map"></div>
				      <input id="latitude" name="latitude" value="${contactUsPage.latitude}" type="hidden">
				      <input id="longitude" name="longitude" value="${contactUsPage.longitude}" type="hidden">
				    </div>
				  </div>
				  <div class="form-group">
				    <label class="col-md-2 control-label">联系我们介绍</label>
				    <div class="col-md-9">
				      <script id="container" name="content" type="text/plain" style="height:500px; width: 100%;">${contactUsPage.content}</script>
				    </div>
				  </div>
				  <div class="row">
				    <div class="col-md-4 col-md-offset-5">
				      <button class="btn btn-info" type="submit">提交</button>
				    </div>
				  </div>
				</form>
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
<script src="<%=baseUrl%>/static/lib/bower_components/AdminLTE/dist/js/app.min.js"></script>
<script src="<%=baseUrl%>/static/lib/bower_components/bootstrap-fileinput/js/fileinput.min.js" type="text/javascript"></script>
<script src="<%=baseUrl%>/static/lib/bower_components/bootstrap-fileinput/js/locales/zh.js"  type="text/javascript"></script>
<script src="<%=baseUrl%>/static/common/admin/js/banner_image_upload.js"  type="text/javascript"></script>
<script src="<%=baseUrl%>/static/common/admin/js/contact_us_page.js"  type="text/javascript"></script>
</body>
</html>
