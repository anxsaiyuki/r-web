define(['jquery'],function($){
	return{
		start:function(){
			function getUrlVars() {
				var vars = {};
				var parts = window.location.href.replace(/[?&]+([^=&]+)=([^&]*)/gi, function(m,key,value) {
					vars[key] = value;
				});
				return vars;
			}

			$.get( "/module/product." + getUrlVars()["category"] , function( data ) {
			  $( "#product_container" ).html( data );
			  console.log( "Product Load was Performed." );
			});
		}
	}
});
