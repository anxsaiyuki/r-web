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
						
						$('.search_header').on('click', function() { 
							
							if  ($('.search_box').hasClass('off')) {
							
								$('.search_box').removeClass('off');
								$('.search_box_dummy').removeClass('off');
							
							}
							else {
							
								$('.search_box').addClass('off');
								$('.search_box_dummy').addClass('off');
							
							}

						});
						
						$(document).on('swipeUp', function() {
							
							if  ($('.search_box').hasClass('off')) {
							}
							else{
								$('.search_box').addClass('off');
								$('.search_box_dummy').addClass('off');
							}
						
						});
					});
				});
			});

	});
});
