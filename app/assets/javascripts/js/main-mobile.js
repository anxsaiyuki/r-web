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
			$.ui.autoLaunch = true;
			$.ui.animateHeaders = false;
			$.ui.useInternalRouting = false;
			$.feat.nativeTouchScroll=true;
			require(['item'], function(a){
				$(document).ready(function(){
					$.ui.setSideMenuWidth('260px');
					$.ui.launch();
					//a.start();
				});
			});
		});

	});
});
