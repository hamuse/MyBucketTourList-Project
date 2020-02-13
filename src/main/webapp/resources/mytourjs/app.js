"use strict";
var app = app || {};
app = (() => {
	const WHEN_ERR = 'app js를 찾을수 없습니다.'
	let context, js;
	let mainHomejs;
	let run = x => {
		$.getScript(x +'/resources/mytourjs/cmm/router.js', () => {
			$.extend(new Session(x));
			onCreate();
		})
	}
	let init = () => {
		context = $.ctx();
		js = $.js();
		mainHomejs = js + '/cmm/mainHome.js'
	}
	let onCreate = () => {
		init();
		$.when(
			$.getScript(mainHomejs)
		)
			.done(() => {
				mainHome.onCreate()
			})
			.fail(() => {
				alert(WHEN_ERR)
			})
	}
	return { run }
})();