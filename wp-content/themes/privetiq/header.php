<!DOCTYPE html>
<html <?php language_attributes(); ?> class="no-js no-svg">
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
<title><?php wp_title(); ?></title>
<base href="<?php echo home_url(); ?>">
<link rel="shortcut icon" href="<?php echo get_template_directory_uri(); ?>/assets/images/favicon.ico">
<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/style.css">
<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/style.css">
<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<div id="page" class="site">

	<header id="masthead" class="site-header">
        <div class="wrap">
            <?php if (is_front_page()) { ?>
            <div class="logo_container">
                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/logo.png" alt="Логотип">
            </div>
            <?php } else { ?>
                <a href="<?php echo home_url('/')?>" class="logo_container">
                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/logo.png" alt="Логотип">
                </a>
            <?php } ?>

            <div class="search_container">
                <?php get_search_form(true); ?>
            </div>

            <?php if (!is_page(8)) { ?>
            <a href="<?php echo home_url(); ?>/add" class="add_story">
                <span>Додати історію</span>
                <i class="mini-icon">+</i>
            </a>
            <?php } ?>
        </div>
	</header><!-- #masthead -->

    <div class="navigation_filter">
        <div class="wrap">
            <a href="<?php echo home_url(); ?>/?filter=new" class="filter_post <?php if (isset($_GET['filter']) && $_GET['filter'] == 'new') {echo 'active_filter';} ?>">Нове</a>
            <a href="<?php echo home_url(); ?>/?filter=popular" class="filter_post <?php if (isset($_GET['filter']) && $_GET['filter'] == 'popular') {echo 'active_filter';} ?>">Популярне</a>
            <?php if (wp_is_mobile()) { ?>
                <div class="themes_dropdown">
                    <div class="dropdown_description">Теми <i class="arrow arrow_down"></i></div>
                    <div class="dropdown_menu">
                        <?php
                        $cats = get_categories();
                        foreach ($cats as $cat) { ?>
                            <a href="<?php echo get_category_link($cat->term_id); ?>" title="<?php echo $cat->description; ?>" class="cat cat-<?php echo $cat->term_id; ?>"><?php echo $cat->name; ?>,</a>
                        <?php } ?>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>


    <div id="content" class="site-content">
        <div class="wrap">