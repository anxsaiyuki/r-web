define(['jquery'],function($){
	return{
		start:function(){
			$.get( "../module/product.html", function( data ) {
			  $( "#product_container" ).html( data );
			  console.log( "Product Load was Performed." );
			});
		}
	}
});