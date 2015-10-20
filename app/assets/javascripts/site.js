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
    fixme();
    $(window).resize(function() {
        homepageDesktopNavSourceOrder();
        fixme();
    });

    // make .fixme fixed when scrolled down and static when scrolled above

    if ($('.fixme').length > 0) {
      var fixmeTop = $('.fixme').offset().top;       // get initial position of the element
    }
    
    $(window).scroll(function() {                  // assign scroll event listener
        var currentScroll = $(window).scrollTop(); // get current position
        if (currentScroll >= fixmeTop) {           // apply position: fixed if you
            $('.fixme').css({                      // scroll to that element or below it
                position: 'fixed',
                top: '0',
                left: '40',
                padding: '0 20px 0 0'
            });
        } else {                                   // apply position: static
            $('.fixme').css({                      // if you scroll above it
                position: 'static',
                padding: '0'
            });
        }
    }); 

    // wrap iframes in flex video class

    // $('.post').find('iframe').each(function() {
    //     $(this).before($('<div class="flex-video">'));
    //     $(this).after($('</div>'));
    // });
    $("iframe").wrap("<div class='flex-video'/>");
});
