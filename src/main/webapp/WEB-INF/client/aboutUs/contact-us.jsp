<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String baseUrl = request.getContextPath(); %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/lib/bower_components/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/shared_show.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/contact-us.css">
<title>联系我们</title>
</head>
<body>
<jsp:include page="../shared/_header.jsp"></jsp:include>
<div class="main container">
        <div class="row">
            <div class="col-sm-8">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label for="name" class="col-sm-2 control-label">姓名</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="name" placeholder="姓名">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="tel" class="col-sm-2 control-label">电话</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="tel" placeholder="电话" >
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="email" class="col-sm-2 control-label">邮箱</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="email" placeholder="邮箱">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="message" class="col-sm-2 control-label">留言</label>
                        <div class="col-sm-10">
                            <textarea type="text" class="form-control" id="message" rows="7"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-2">
                            <button type="submit" class="btn btn-default">　清空　</button>
                        </div>
                        <div class="col-sm-4">
                            <button type="submit" class="btn btn-danger">　发送　</button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-xs-4 info">
                <img src="<%=baseUrl%>/static/common/client/images/contact-us/contact_03.png" alt="pic" class="img-responsive">
                <p><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span><span>ADD:中国.广东揭阳人民政府左侧酒店五楼M1156间</span></p>
                <p><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span><span>PHONE:4000-123-456</span></p>
                <p><i class="fa fa-volume-control-phone asome" aria-hidden="true"></i><span>TEL:+86-11111-2222</span></p>
                <p><i class="fa fa-qq asome" aria-hidden="true"></i><span>QQ:1111111111</span></p>
            </div>
        </div>

    </div>
 <jsp:include page="../shared/_footer.jsp"></jsp:include>
</body>
<script type="text/javascript" src="<%=baseUrl%>/static/lib/bower_components/jquery/dist/jquery.min.js"></script>
<script type="text/javascript" src="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=baseUrl%>/static/common/client/js/sites_show.js"></script>
</html>