<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% String imageServer=application.getInitParameter("imageServer"); %>

<form class="form-horizontal" method="POST" action="${param.actionUrl}" id="uploadForm" enctype="multipart/form-data">
  <c:if test="${param.method=='PATCH'}">
    <input name="_method" value="PATCH" type="hidden">
    <input type="hidden" name="id" value="${navMenu.id}">
  </c:if>
  <div class="form-group">
    <label class="col-md-3 control-label">案例分组名称</label>
    <div class="col-md-9">
      <input class="form-control" type="text" name="name" value="${navMenu.name}">
    </div>
  </div>
  <div class="form-group">
    <div class="row">
      <div class="col-md-12">
        <button type="submit" class="btn btn-info col-md-offset-6">提交</button>
      </div>
    </div>
  </div>
</form>