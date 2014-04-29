define(['jquery'],function($){
	return{
		start:function(){
			$.get( "welcome/banner.html", function( data ) {
			  $( "#banner" ).html( data );
			  console.log( "Banner Load was Performed." );
			});
		}
	}
});
