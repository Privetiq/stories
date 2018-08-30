<?php
$post_id = get_the_ID();
$post_categories = wp_get_post_categories($post_id);
$likes_counts = wp_ulike_get_post_likes($post_id);
$likes_count = preg_replace("/[^0-9,.]/", "", $likes_counts);
if ($likes_count == "") {
    $likes_count = 0;
}
?>

<h1><?php the_title(); ?></h1>
<div class="likes_count"><i class="my_heart"></i><?php echo $likes_count; ?></div>
<div class="clear"></div>
<div class="date"><?php echo get_the_date(); ?></div>
<a href="<?php echo get_category_link($post_categories[0]); ?>" class="cat cat-<?php echo $post_categories[0] ?>"><?php echo get_cat_name($post_categories[0]); ?></a>

<p><?php the_content(); ?></p>

<div class="minipost_footer">
    <div class="likes_box">
        <?php if(function_exists('wp_ulike')) wp_ulike('get'); ?>
        <span>Лайк?</span>
    </div>
    <div class="sharing">
        <p class="sharing_lable">
            <i class="arrow_sharing"></i>
            <span>Поділитися?</span>
        </p>
        <div class="sharing_box">
            <?php echo do_shortcode('[TheChamp-Sharing]'); ?>
        </div>
    </div>
</div>
