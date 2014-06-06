require.config({
    baseUrl: '/assets',
    paths: {
		"jquery": 'jquery',
		"jqury_ui": 'jquery_ujs',
		"jq_app": 'js/lib/jq.appframework',
		"app-ui": 'js/lib/appframework.ui',
		"app-slide": 'js/lib/af.slidemenu',
		"app-ui3": 'js/lib/appframework.ui3',
		"lm": 'js/lib/loading_mask',
		"item": 'js/lib/widget/item'
    }
});


require(['jquery'], function() {
	require(['jqury_ui'], function() {
			require(['app-ui'], function() {
				$.ui.autoLaunch = !1, $.ui.animateHeaders = !1, $.ui.useOSThemes = !1, $.ui.splitview = !1, $.feat.nativeTouchScroll=true, require(['item', 'lm'], function(a, b){
					

					$(document).ready(function(){

						$.ui.useInternalRouting = !1;
						$.ui.setSideMenuWidth('260px');
						$.ui.launch();
						//a.start();
						
						var searchbox = $('.search_box');
						var searchdummy = $('.search_box_dummy');
						var searchbar = $('.search_bar');
						var searchheader = $('.search_header');
						
					

						$('.search_header').on('click', function() { 

							if  (searchbox.hasClass('off')) {
								
								searchbox.fadeIn(500);
								searchdummy.fadeIn(500);
								searchheader.addClass('search-on');
								searchbox.removeClass('off');
								searchdummy.removeClass('off');
								searchbar.focus();
							}
							else {
							
								searchbox.fadeOut(500);
								searchdummy.fadeOut(500);
								searchheader.removeClass('search-on');
								searchbox.addClass('off');
								searchdummy.addClass('off');
							
							}

						});
						
						
						window.loadingMask = function(){
							this.disabled=true;
							$('#home').css('overflow','hidden');
							$('#afui_mask').show();
							$('.load_mask').show();
							this.disabled=false;
						};
						
						$('.loading_mask').on('click', function(){
							this.disabled=true;
							$('#home').css('overflow','hidden');
							$('#afui_mask').show();
							$('.load_mask').show();
							this.disabled=false;
						});
						
						$('.cart_delete').on('click', function(){
							this.disabled=true;
							$('#home').css('overflow','hidden');
							$('#afui_mask').show();
							$('.load_mask').show();
							this.disabled=false;
						});
						
						$('.item_buy_button').on('click', function(){
							this.disabled=true;
							$('#home').css('overflow','hidden');
							$('#afui_mask').show();
							$('.load_mask').show();
							this.disabled=false;
						});
						
						$('.list-buy-button').on('click', function(){
							this.disabled=true;
							$('#home').css('overflow','hidden');
							$('#afui_mask').show();
							$('.load_mask').show();
							this.disabled=false;
						});
						
						$(document).on("touchmove", function() {
							
							if  (searchbox.hasClass('off')) {
							}
							else{
								searchbox.fadeOut(500);
								searchdummy.fadeOut(500);
								searchheader.removeClass('search-on');
								searchbox.fadeout('slow').addClass('off');
								searchdummy.fadeout('slow').addClass('off');
							}
						
						});
						
					});
				});
			});

	});
});
