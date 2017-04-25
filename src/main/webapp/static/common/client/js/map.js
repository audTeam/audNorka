// 百度地图API功能
    var map = new BMap.Map("allmap");    // 创建Map实例
    var point = new BMap.Point(121.514263, 31.240165);
    map.centerAndZoom(point, 15);
    map.setCurrentCity("上海环球金融中心");          // 设置地图显示的城市 此项是必须设置的
    map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
    
    var pt = new BMap.Point(121.514263, 31.240165);
	var myIcon = new BMap.Icon("/audNorka/static/common/client/images/sites/Subtraction 1.png", new BMap.Size(300,157));
	var marker2 = new BMap.Marker(pt,{icon:myIcon});  // 创建标注
	map.addOverlay(marker2);
    

    for (var i in citygjjson){
        if (citygjjson[i].n){
            $(".my-select").append("<option>"+citygjjson[i].n+"</option>")
        }
    }