<?php get_header(); ?>
<div id="primary" class="content-area">
    <main class="site-main" role="main">
        <div class="wrap">
            <div class="content_archive">
                <?php
                if ( have_posts() ) {
                    while ( have_posts() ) {

                        the_post();

                        get_template_part('template-parts/post', 'mini');

                    }
                }
                ?>
            </div>
        </div>
    </main>
    <?php get_sidebar(); ?>
</div> <!-- /wrap -->
<?php get_footer(); ?>
