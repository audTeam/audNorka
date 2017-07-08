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
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<%=baseUrl%>/static/lib/bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="<%=baseUrl%>/static/lib/bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<%=baseUrl%>/static/lib/bower_components/AdminLTE/dist/css/AdminLTE.min.css">
  <link rel="stylesheet" href="<%=baseUrl%>/static/lib/bower_components/AdminLTE/dist/css/skins/skin-blue.min.css">
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
  <jsp:include page="../shared/_header.jsp"></jsp:include>
  <jsp:include page="../shared/_aside.jsp"></jsp:include>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>职位分类列表</h1>
      <ol class="breadcrumb">
        <li><a href="<%=baseUrl%>/admin/dashborad"><i class="fa fa-dashboard"></i> 首页</a></li>
        <li class="active">职位分类列表</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Your Page Content Here -->
      <div class="box">
        <div class="box-body">
          <div class="row">
            <div class="col-md-12 text-right">
              <button type="button" class="btn btn-primary btn-md" data-toggle="modal" data-target="#myModal">头图管理</button>
              <a class="btn btn-default" href="<%=baseUrl%>/admin/categories/new">新增</a>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12">
              <table class="table table-strip table-hover">
                <tr>
                  <td>序号</td>
                  <td>分类名称</td>
                  <td>操作</td>
                </tr>
                <c:forEach var="jobCategory" items="${jobCategories}" varStatus="status">
                  <tr>
                    <td>${status.index+1}</td>
                    <td>${jobCategory.name}</td>
                    <td>
                      <a class="btn btn-default" href="<%=baseUrl%>/admin/categories/${jobCategory.id}/edit">编辑分类名称</a>
                      <a class="btn btn-info" href="<%=baseUrl%>/admin/categories/${jobCategory.id}/jobs">配置职位</a>
                      <form action="<%=baseUrl%>/admin/categories/${jobCategory.id}/delete" method="POST" style="display: inline;">
                        <!-- <input type="hidden" name="_method" value="DELETE"> -->
                        <button class="btn btn-danger" type="submit">删除</button>
                      </form>
                    </td>
                  </tr>
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
<!-- Button trigger modal -->
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">头图管理</h4>
      </div>
      <div class="modal-body">
		<form class="form-horizontal" method="post" action="<%=baseUrl%>/admin/categories/headImg/update" id="uploadForm" enctype="multipart/form-data">
          <c:if test="${historyIntroduce.jobHeadImg != null}">
          <div class="form-group">
			<label class="col-md-2 control-label">招聘页面图片</label>
			    <div class="col-md-10">
			      <img alt="banner图片" class="img-responsive" src="<%=application.getInitParameter("imageServer")%>/${historyIntroduce.jobHeadImg}">
			    </div>
			  </div>
			  </c:if>
			  <div class="form-group">
			    <label class="col-md-2 control-label">图片文件</label>
			    <div id="uploadFileDiv" class="col-md-10">
			      <input id="pdFile" name="jobPic" type="file">
			      <div id="fileError" class="help-block"></div>
			      <p class="help-block">支持jpg、jpeg、png、gif格式，宽度1280px，高度500px</p>
			      <br />
			    </div>
			  </div>
              <div class="form-group">
			    <div class="row">
			      <div class="col-md-4 col-md-offset-4">
			        <button class="btn btn-default" type="submit">提交</button>
			      </div>
			    </div>
			  </div>
		</form>
      </div>
    </div>
  </div>
</div>
<!-- jQuery 2.2.3 -->
<script type="text/javascript" src="<%=baseUrl%>/static/lib/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script type="text/javascript" src="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="<%=baseUrl%>/static/lib/bower_components/AdminLTE/dist/js/app.min.js"></script>

</body>
</html>
