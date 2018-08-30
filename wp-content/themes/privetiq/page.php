<?php get_header(); ?>
<div id="primary" class="content-area">
    <main class="site-main" role="main">


        <?php while ( have_posts() ) : the_post(); ?>

            <h1><?php the_title(); ?></h1>
            <?php the_content(); ?>


        <?php endwhile; // End of the loop.?>


    </main>
</div> <!-- /primary -->
<?php get_footer(); ?>
