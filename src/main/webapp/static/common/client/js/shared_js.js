$(function(){
	var audBrandWidth = $('#aud-brand').width();
	var totalWidth = $('#aud-brand-bg').width();
	$('#aud-bg').width(totalWidth-audBrandWidth-2);

	var url = location.href;
	var url1=url.indexOf("teamMembers")>0;
	var url2=url.indexOf("news")>0;
	var url3=url.indexOf("jobDetail")>0;
	var url4=url.indexOf("contactUs")>0;
	if(url1||url2||url3||url4){
	  var audBrand = $('#aud-brand').attr("src");
	  $("#aud-brand").attr("src",audBrand.replace("stripline-1.png", "stripline2.png"));// "/audNorka/static/common/client/images/sites/stripline2.png")
	}
});