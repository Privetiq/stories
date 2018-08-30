<?php get_header(); ?>

<div id="primary" class="content-area">
	<main id="main" class="site-main" role="main">

        <?php

        $args = array(
            'post_type' => 'post',
            'orderby' => 'date',
            'order' => 'DESC'
        );

        if (isset($_GET['filter']) && $_GET['filter'] == 'popular') {
            $args['meta_key'] = '_liked';
            $args['orderby'] = 'meta_value_num';
            $args['order'] = 'DESC';
        }




        query_posts($args);

        if (have_posts()) {
            while (have_posts()) {
                the_post();
                get_template_part('template-parts/post', 'mini');
            }
        }; ?>

	</main><!-- #main -->
    <?php get_sidebar(); ?>
</div><!-- #primary -->

<?php get_footer();
