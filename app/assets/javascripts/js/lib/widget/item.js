define(['jquery'],function($){
	return{
		start:function(){
			$.get( "/module/item." + location.pathname.split('.')[1] , function( data ) {
			  $( "#item_container" ).html( data );
			  console.log( "Item Load was Performed." );
			});
		}
	}
	
});