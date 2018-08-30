<?php get_header(); ?>

<div class="wrap">

<!--	<header class="page-header">-->
            <?php //if ( have_posts() ) : ?>
<!--			<h1>Пошук по запиту: --><?php //echo get_search_query(); ?><!--</h1>-->
            <?php //else : ?>
<!--			<h1>Нічого не знайдено</h1>-->
            <?php //endif; ?>
<!--	</header><!-- .page-header -->

	<div id="primary" class="content-area">
		<main id="main" class="site-main" role="main">

		<?php
		if ( have_posts() ) :
			/* Start the Loop */
			while ( have_posts() ) : the_post();

				get_template_part( 'template-parts/post', 'mini' );

			endwhile; // End of the loop.


		else : ?>

			<p>Щось нічого немає</p>
			<?php get_search_form();

        endif; ?>

		</main><!-- #main -->
	</div><!-- #primary -->
	<?php get_sidebar(); ?>
</div><!-- .wrap -->

<?php get_footer();
