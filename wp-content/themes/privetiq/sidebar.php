<aside class="sidebar-content">
    <strong class="widget_title widget_themes">Теми</strong>
    <?php
    $cats = get_categories();
    foreach ($cats as $cat) { ?>
        <a href="<?php echo get_category_link($cat->term_id); ?>" title="<?php echo $cat->description; ?>" class="cat cat-<?php echo $cat->term_id; ?>"><?php echo $cat->name; ?>,</a>
    <?php } ?>
    <br>
    <br>
    <strong class="widget_title widget_tags">Теги</strong>
    <br>
    <div class="hashtags">
    <?php
    if (function_exists('wp_tag_cloud')) {
        $tags = wp_tag_cloud( array(
                'smallest'=>16,
                'largest'=>16,
                'orderby'=>'count',
                'order'=>'RAND',
                'unit'=>'px',
                'separator'=>', ',
                'format' => 'array')
        );
        foreach($tags as $tag) {
            echo '#'.$tag.', ';
        }
    }
    ?>
    </div>
</aside>
