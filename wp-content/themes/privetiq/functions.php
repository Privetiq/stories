<?php
function privetiq_setup() {
	// This theme uses wp_nav_menu() in two locations.
	register_nav_menus( array(
		'top'    => 'Меню у шапці',
	) );

	// Add theme support for Custom Logo.
	add_theme_support( 'custom-logo', array(
		'width'       => 210,
		'height'      => 61,
		'flex-width'  => true,
	) );
}
add_action( 'after_setup_theme', 'privetiq_setup' );

add_filter('wp_ulike_count_box_template', 'wp_ulike_change_my_count_box_template', 10, 2);
function wp_ulike_change_my_count_box_template($string, $counter) {
    return;
}
//Настройка excerpt символов
add_filter( 'excerpt_length', function(){
	return 200;
} );
//Конец ексерта
add_filter( 'excerpt_more', 'new_excerpt_more' );
function new_excerpt_more( $more ){
    global $post;
    return ' ...<br><a href="'. get_permalink($post) . '" class="read">Читати далі...</a>';
}

//Удаление dns-prefetch
remove_action( 'wp_head', 'wp_resource_hints', 2);

// удалить атрибут type у scripts и styles
add_filter('style_loader_tag', 'clean_style_tag');
function clean_style_tag($src) {
	return str_replace("type='text/css'", '', $src);
}

add_filter('script_loader_tag', 'clean_script_tag');
function clean_script_tag($src) {
	return str_replace("type='text/javascript'", '', $src);
}
//относительные ссылки
function remove_domain_in_link($link) {
    $short_link = str_replace(home_url(), '/', $link);
    return $short_link;
}
apply_filters('get_permalink', 'remove_domain_in_link');

//отключение jquery
add_action( 'wp_enqueue_scripts', 'jquery_script_method' );
function jquery_script_method() {
    wp_register_script( 'jquery', 'https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js', false, null, true );
    wp_enqueue_script( 'jquery' );
}
function my_deregister_scripts(){
    wp_deregister_script( 'wp-embed' );
}
add_action( 'wp_footer', 'my_deregister_scripts' );

/**
 * Disable the emoji's
 */
add_action( 'init', 'disable_emojis' );
function disable_emojis() {
    remove_action( 'wp_head', 'print_emoji_detection_script', 7 );
    remove_action( 'admin_print_scripts', 'print_emoji_detection_script' );
    remove_action( 'wp_print_styles', 'print_emoji_styles' );
    remove_action( 'admin_print_styles', 'print_emoji_styles' );
    remove_filter( 'the_content_feed', 'wp_staticize_emoji' );
    remove_filter( 'comment_text_rss', 'wp_staticize_emoji' );
    remove_filter( 'wp_mail', 'wp_staticize_emoji_for_email' );
}