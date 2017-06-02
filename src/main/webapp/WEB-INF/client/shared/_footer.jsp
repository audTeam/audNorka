<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String baseUrl = request.getContextPath();
%>
<!-- 百度搜索的js代码 -->
<script type="text/javascript">(function(){document.write(unescape('%3Cdiv id="bdcs"%3E%3C/div%3E'));var bdcs = document.createElement('script');bdcs.type = 'text/javascript';bdcs.async = true;bdcs.src = 'http://znsv.baidu.com/customer_search/api/js?sid=6553294303552011731' + '&plate_url=' + encodeURIComponent(window.location.href) + '&t=' + Math.ceil(new Date()/3600000);var s = document.getElementsByTagName('script')[0];s.parentNode.insertBefore(bdcs, s);})();</script>
<footer >
    <section class="container-fluid phone-footer">
        <div class="footer-text">
            <img src="<%=baseUrl%>/static/common/client/images/sites/triangle.png" alt="pic" class="footer-pic"/>
            <span>Copyright&copy;2003-2017 上海域达建筑设计咨询有限公司 沪ICP备17022347号-1 <a href="<%=baseUrl%>/admin/sessions/new">管理员登录</a></span>
        </div>
    </section>
</footer> 