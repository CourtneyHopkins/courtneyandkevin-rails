$(document).ready(function() {

    function getViewportDimensions() {
        var w=window,d=document,e=d.documentElement,g=d.getElementsByTagName('body')[0],x=w.innerWidth||e.clientWidth||g.clientWidth,y=w.innerHeight||e.clientHeight||g.clientHeight;
        return { width:x,height:y };
    }

    // change source order of nav elements between viewport widths

    function homepageDesktopNavSourceOrder() {
        var viewport = getViewportDimensions();
        if (viewport.width >= 640 ) {
            $('.menu').appendTo('.desktop-nav-catch');  
        } else {
            $('.menu').appendTo('.mobile-nav-catch'); 
        }
    }

    // add remove fixme class based on viewport width

    function fixme() {
        var viewport = getViewportDimensions();
        if (viewport.width >= 1024 ) {
            $('.put-fix-me-here').addClass('fixme');
        } else {
            $('.put-fix-me-here').removeClass('fixme');
        }
    }  

    homepageDesktopNavSourceOrder();
    $(window).resize(function() {
        homepageDesktopNavSourceOrder();
    });

    // wrap iframes in flex video class

    $("iframe").wrap("<div class='flex-video'/>");
});
