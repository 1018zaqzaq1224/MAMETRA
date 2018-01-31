$(function(){
	$('.event-photo').slick();
	$('.productimage').slick();
	$('.snapshotimage').slick();

	$('section.home.open').bgSwitcher({
		images: ['assets/top.jpg','assets/top2.jpg','assets/top3.jpg','assets/top4.jpg','assets/top5.jpg','assets/top6.jpg'], // 切り替える背景画像を指定
		loop: true,
		shuffle: true,
	});
});