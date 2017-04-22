$(function(){
	var newsShow={
    pageNo: 1,

    showNews: function(collection){
      var baseUrl = $("#base-url").data("base-url");
      for(var index in collection){
        var htmlItem = "<li>"+
            "<a href='http://"+window.location.host+baseUrl+"/client/news?id="+collection[index].id+"'>"+
              "<h5>"+collection[index].title+"</h5>"+
              "<h5>"+collection[index].author+"</h5>"
            "</a>"+
            "<h6>"+collection[index].publishAt+"</h6>"+
          "</li>";
        $("#newsContainer").append(htmlItem);
      }
    },

		onLoadMoreButtonClicked: function(){
      newsShow.pageNo += 1;
      var baseUrl = $("#base-url").data("base-url");
      var host = window.location.host;
      var url = "http://"+host+"/"+baseUrl+"/client/news/getNewsList?pageNo="+newsShow.pageNo;

			$.getJSON(url,{},function(data,status,xhr){
        if(newsShow.pageNo==data.collection.pages){
          $("#loadMoreButton").empty();
        }
        newsShow.showNews(data.collection.list);
      });
		}
	};

	$("#loadMoreButton").on('click', newsShow.onLoadMoreButtonClicked);
});