<?php
/**
 * The template for displaying 404 pages (not found)
 *
 * @link https://codex.wordpress.org/Creating_an_Error_404_Page
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.0
 */

get_header(); ?>
<div class="page_404">
    <div class="left-block">
        <h1>404</h1>
        <div class="description_404">
            Щось пішло не так..
        </div>
        <a href="<?php echo home_url();?>" class="btn btn-primary btn_404">На головну сторінку</a>
    </div>
</div>
<?php get_footer();
