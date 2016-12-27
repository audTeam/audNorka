/**
 * Created by Bing on 2016/12/27.
 */
$(function(){
	$(".ul_one>li>a>span").mouseenter(function () {
	    $(".ul_one>li>a>span").removeClass("active");
	    $(this).addClass("active");
	    var tag = $(".ul_one>li>a>span").index(this);
	    var el = $(".nav_two .ul_two").eq(tag);
	    $(".nav_two .ul_two").removeClass("current");
	    $(el).addClass("current");
	});

	$(".nav_two .ul_two").mouseenter(function () {
	    var index =  $(".nav_two .ul_two").index(this);
	    $(".ul_one>li>a>span").eq(index).addClass("active");
	});

	$(".nav_two .ul_two").mouseleave(function () {
	    $(this).removeClass("current");
	    var index =  $(".nav_two .ul_two").index(this);
	    $(".ul_one>li>a>span").eq(index).removeClass("active");
	});

	$("header").mouseleave(function () {
	    $(".nav_two .ul_two").removeClass("current");
	    $(".ul_one>li>a>span").removeClass("active");
	});
});
