<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%String baseUrl = request.getContextPath(); %>

<form action="${param.actionUrl}" method="POST" class="form-horizontal">
  <input type="hidden" name="navMenuId" value="${menu.id}">
  <div class="form-group">
    <label class="control-label col-md-4">案例中文名称</label>
    <div class="col-md-8">
      <input type="text" class="form-control" name="zhName" value="${project.zhName}">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-4">案例英文名称</label>
    <div class="col-md-8">
      <input type="text" class="form-control" name="cnName" value="${project.cnName}">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-4">地址</label>
    <div class="col-md-8">
      <input type="text" class="form-control" name="address" value="${project.address}">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-4">内容</label>
    <div class="col-md-8">
      <textarea rows="10" class="form-control" name="content">${project.content}</textarea>
    </div>
  </div>
  <div class="form-group">
    <div class="row">
      <div class="col-md-12">
        <button type="submit" class="btn btn-info">提交</button>
      </div>
    </div>
  </div>
</form> 
