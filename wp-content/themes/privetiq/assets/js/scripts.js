jQuery('.dropdown_description').click(function () {
    jQuery('.dropdown_menu').toggle();
    if (jQuery('.arrow').hasClass('arrow_down')) {
        jQuery('.arrow').removeClass('arrow_down');
    } else {
        jQuery('.arrow').addClass('arrow_down')
    }
});

jQuery('.sharing').click(function () {
    jQuery(this).children('.sharing_box').toggle();
    var arrow = jQuery(this).children('.sharing_lable').children('.arrow_sharing');
    if (arrow.hasClass('sharing_active')) {
        arrow.removeClass('sharing_active');
        // console.log(jQuery(this).children('.arrow_sharing'));
    } else {
        // console.log(jQuery(this).children('.arrow_sharing'));
        arrow.addClass('sharing_active')
    }
});