<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<form action="${param.actionUrl}" class="form-horizontal" method="POST">
  <div class="form-group">
    <label class="control-label col-md-4">标题</label>
    <div class="col-md-8">
      <input type="text" name="title" class="form-control">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-4">内容</label>
    <div class="col-md-8">
      <textarea rows="8" name="content" cols="30"></textarea>
    </div>
  </div>
  <div class="row">
    <div class="col-md-6 col-md-offset-4">
      <button class="btn btn-info">提交</button>
    </div>
  </div>
</form>
