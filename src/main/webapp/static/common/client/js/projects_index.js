$(function(){
	var projectIndex={
    pageNo: 1,

    showProject: function(collection){
      var baseUrl = $("#base-url").data("base-url");

      for(var index in collection){
        var itemUrl = "http://"+window.location.host+baseUrl+"/client/projects?id="+collection[index].project.id;
        var htmlItem = "<div class='col-sm-3'>"+
            "<a href='"+itemUrl+"'>"+
              "<img src=http://116.62.50.194/"+collection[index].images[0].imgUrl+" alt='pic' class='img-responsive'>"+
            "<a href='"+itemUrl+"'>"+
            "<h5>"+collection[index].project.name+"</h5></a>"+
            "<h6 class='address'>"+collection[index].project.address+"</h6>"+
          "</div>";
        $("#projectContainer").append(htmlItem);
      }
    },

		onLoadMoreButtonClicked: function(){
      projectIndex.pageNo += 1;
      var baseUrl = $("#base-url").data("base-url");
      var loadMoreUrl = $("#load-more-url").data('load-more-url');
      var host = window.location.host;
      var url = "http://"+host+"/"+baseUrl+loadMoreUrl+"?pageNo="+projectIndex.pageNo;

			$.getJSON(url,{},function(data,status,xhr){
        if(projectIndex.pageNo==data.page.pages){
          $("#loadMoreButton").empty();
        }
        projectIndex.showProject(data.collection);
      });
		}
	};

	$("#loadMoreButton").on('click', projectIndex.onLoadMoreButtonClicked);
});