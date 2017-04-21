<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<form class="form-horizontal" method="POST" action="${param.actionUrl}" id="uploadForm" enctype="multipart/form-data">
  <c:if test="${param.method=='PATCH'}">
    <!-- <input type="hidden" name="_method" value="PATCH"> -->
    <input type="hidden" name="id" value="${news.id}">
  </c:if>
  <div class="form-group">
    <label class="col-md-2 control-label">标题</label>
    <div class="col-md-10">
      <input type="text" name="title" value="${news.title}" class="form-control">
    </div>
  </div>
  <div class="form-group">
    <label class="col-md-2 control-label">新闻摘要</label>
    <div class="col-md-10">
      <input type="text" name="subTitle" value="${news.subTitle}" class="form-control">
    </div>
  </div>
  <div class="form-group">
    <label class="col-md-2 control-label">作者</label>
    <div class="col-md-10">
      <input type="text" name="author" value="${news.author}" class="form-control">
    </div>
  </div>
  <div class="form-group">
    <label class="col-md-2 control-label">新闻内容</label>
    <div class="col-md-10">
      <script id="container" type="text/plain" name="content" style="height:500px">${news.content}</script>
    </div>
  </div>
  <div class="row">
    <div class="col-md-4 col-md-offset-3">
      <button class="btn btn-info" type="submit">提交</button>
    </div>
  </div>
</form>