/**
 * Created by Bing on 2016/12/27.
 */
$(".ul_one>li>a>span").mouseenter(function () {
    var tag = $(".ul_one>li>a>span").index(this)
    var el = $(".nav_two .ul_two").eq(tag)
    $(".nav_two .ul_two").removeClass("current");
    $(el).addClass("current");
    $(".ul_one>li>.flg-pic").removeClass("current");
    $(".ul_one>li>.flg-pic").removeClass("home-pic");
    $(".ul_one>li>.flg-pic").removeClass("project-pic");
    $(this).parent().siblings().addClass("current");
})
$(".second-nav").mouseenter(function () {
    var index = $(".second-nav").index(this);
    $(".ul-three").removeClass("current2");
    $(this).siblings(".ul-three").addClass("current2")

})

$(".nav_two .ul_two").mouseleave(function () {
    $(this).removeClass("current")
})
$("header").mouseleave(function () {
    $(".nav_two .ul_two").removeClass("current");
})
$(".carousel").hover(function(){
    $(".carousel-control").css({"opacity":"1"});
    $(".carousel-caption").css({"display":"block"});
},function(){
    $(".carousel-control").css({"opacity":"0"});
    $(".carousel-caption").css({"display":"none"});
})
