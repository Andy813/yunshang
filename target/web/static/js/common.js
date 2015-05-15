/**
 * Created by peter on 2015/4/22.
 */
/*导航菜单初始化*/
cssdropdown.startchrome("navMenu");
$(function () {
    /*热点新闻图片slide-box初始化*/
    $('#news-slide-box').slideBox({
        duration: 0.3,//滚动持续时间，单位：秒
        // easing : 'linear',//swing,linear//滚动特效
        delay: 3//滚动延迟时间，单位：秒
        // hideClickBar : false//不自动隐藏点选按键
    });

    /*首页横向图片滚动初始化*/
    $('#image-scroll-list').xslider({
        unitdisplayed: 4,
        movelength: 1,
        unitlen: 184,
        autoscroll: 3000
    });
    $('#health-box dl:odd,#pub-event dl:odd', '#right-slide-box').css('background', '#fafafa');
    $('#job-info-box dl:odd,#hr-info-box dl:odd').css('background', '#fcfcfc');
    $('#goto-top-box .qr_pub_weixin').hide();
    $('#goto-top-box .pub_weixin').hover(function(){$('#goto-top-box .qr_pub_weixin').show(200);},function(){$('#goto-top-box .qr_pub_weixin').hide(200);});
    $('div.ws_effect+div','#wowslider-container').empty();
});
