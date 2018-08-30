<?php get_header(); ?>
<div id="primary" class="content-area">
    <main class="site-main" role="main">

        <?php if (function_exists('user_submitted_posts')) user_submitted_posts(); ?>

    </main>
</div> <!-- /primary -->
<?php get_footer(); ?>
