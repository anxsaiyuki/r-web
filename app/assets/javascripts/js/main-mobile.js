require.config({
    baseUrl: '/assets',
    paths: {
		"jquery": 'jquery',
		"jqury_ui": 'jquery_ujs',
		"app-ui": 'js/lib/appframework.ui',
		"app-slide": 'js/lib/af.slidemenu',
		item: 'js/lib/widget/item'
    }
});


require(['jquery'], function() {
	require(['jqury_ui'], function() {
		require(['app-ui'], function() {
			$.ui.autoLaunch = !1, $.ui.animateHeaders = !1, $.ui.useOSThemes = !1, $.ui.splitview = !1, $.feat.nativeTouchScroll=false, require(['item'], function(a){
				$(document).ready(function(){
					$.ui.lockPageBounce=!0;
					$.ui.useInternalRouting = !1;
					$.ui.setSideMenuWidth('260px');
					$.ui.launch();
					//a.start();
				});
			});
		});

	});
});
