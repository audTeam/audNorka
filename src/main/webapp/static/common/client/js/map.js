$(function(){
	var map = new BMap.Map("allmap");    // 创建Map实例
    var latitude = $("#latitude").data("latitude");
    var longitude = $("#longitude").data("longitude");
    var point;
    if(latitude&&longitude){
    	point = new BMap.Point(parseFloat(longitude), parseFloat(latitude));
    	map.centerAndZoom(point, 18);
		map.addOverlay(new BMap.Marker(point));    //添加标注
    }else{
    	point = new BMap.Point(121.514263, 31.240165);
    	map.setCurrentCity("上海环球金融中心");  // 设置地图显示的城市 此项是必须设置的
    }
	map.centerAndZoom(point, 15);
	map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放

	for (var i in citygjjson){
	    if (citygjjson[i].n){
	        $(".my-select").append("<option>"+citygjjson[i].n+"</option>")
	    }
	}	
});
