<?php get_header(); ?>

<div class="wrap">
	<div id="primary" class="content-area">
		<main id="main" class="site-main" role="main">

			<?php
			/* Start the Loop */
			while ( have_posts() ) : the_post();

				get_template_part( 'template-parts/post', 'single' );

			endwhile; // End of the loop.?>

		</main><!-- #main -->
        <?php get_sidebar(); ?>
	</div><!-- #primary -->
</div><!-- .wrap -->

<?php get_footer();
