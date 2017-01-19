//初始化fileinput控件（第一次初始化）
function initFileInput(ctrlName, uploadUrl) {	
	var control = $('#' + ctrlName); 
	control.fileinput({
		language: 'zh', //设置语言
		uploadUrl: uploadUrl, //上传的地址
		allowedFileExtensions : ['jpg', 'png','gif'],//接收的文件后缀
		showUpload: true, //是否显示上传按钮
		showCaption: false,//是否显示标题
		browseClass: "btn btn-primary", //按钮样式			 
		previewFileIcon: "<i class='glyphicon glyphicon-king'></i>", 
	}).on("fileuploaded", function(e, data) {
		var imageUrl = data.response[0].imgUrl;
		$('#imgUrls').append("<input type='hidden' name='imgUrls' value='"+imageUrl+"'>");
    });
}

$(function(){
	//初始化fileinput控件（第一次初始化）
    initFileInput("imgUrl", "/audNorka/admin/uploads/image");
});