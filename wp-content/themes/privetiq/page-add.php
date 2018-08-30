<?php get_header(); ?>
<div id="primary" class="content-area">
    <main class="site-main" role="main">
    <?php while ( have_posts() ) : the_post(); ?>

        <?php the_content(); ?>


    <?php endwhile; // End of the loop.?>

<?php user_submitted_posts(); ?>

    </main>
    <?php get_sidebar(); ?>
</div> <!-- /wrap -->

<?php get_footer(); ?>