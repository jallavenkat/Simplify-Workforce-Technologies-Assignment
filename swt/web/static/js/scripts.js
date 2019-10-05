$(function(){
	$(".t-vw").unbind().on("click",function(){
	    var str = $(this).attr("id")
	    var team = str.split("_");
	    var teamid = team[1];
        window.location.href=baseurl+'/teamDetails/'+teamid
	});

	$(".player-item").unbind().on("click",function(){
	    var playerid = $(this).attr("player-id");
	    var csrfmiddlewaretoken = $("[name=csrfmiddlewaretoken]").val();

	    $.post(baseurl+'/playerDetails/'+playerid,{"csrfmiddlewaretoken":csrfmiddlewaretoken}, function(data,status){
	        if(data != '')
	        {
	            $("#playerBody").html(data)
	            $("#playerModal").modal("show")
	        }
	        else
	        {
	            $("#playerBody").html('<div class="col-sm-12 col-md-12 col-lg-12 col-xs-12">Sorry Player Data not found.</div>')
	            $("#playerModal").modal("show")
	        }

	    });
	});
});