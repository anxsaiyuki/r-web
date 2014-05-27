require.config({
    baseUrl: '/assets',
    paths: {
		"jquery": 'jquery',
		"jqury_ui": 'jquery_ujs',
		"jq_app": 'js/lib/jq.appframework',
		"app-ui": 'js/lib/appframework.ui',
		"app-slide": 'js/lib/af.slidemenu',
		"app-ui3": 'js/lib/appframework.ui3',
		item: 'js/lib/widget/item'
    }
});


require(['jquery'], function() {
	require(['jqury_ui'], function() {
			require(['app-ui'], function() {
				$.ui.autoLaunch = !1, $.ui.animateHeaders = !1, $.ui.useOSThemes = !1, $.ui.splitview = !1, $.feat.nativeTouchScroll=true, require(['item'], function(a){
					$(document).ready(function(){
						$.ui.useInternalRouting = !1;
						$.ui.setSideMenuWidth('260px');
						$.ui.launch();
						//a.start();
						var searchbox = $('.search_box');
						var searchdummy = $('.search_box_dummy')
						$('.search_header').on('click', function() { 

							if  (searchbox.hasClass('off')) {
							
								searchbox.fadeIn(500);
								searchdummy.fadeIn(500);
								searchbox.removeClass('off');
								searchdummy.removeClass('off');
							
							}
							else {
							
								searchbox.fadeOut(500);
								searchdummy.fadeOut(500);
								searchbox.addClass('off');
								searchdummy.addClass('off');
							
							}

						});
						
						$(document).on("touchmove", function() {
							
							if  (searchbox.hasClass('off')) {
							}
							else{
								searchbox.fadeOut(500);
								searchdummy.fadeOut(500);
								searchbox.fadeout('slow').addClass('off');
								searchdummy.fadeout('slow').addClass('off');
							}
						
						});
					});
				});
			});

	});
});
