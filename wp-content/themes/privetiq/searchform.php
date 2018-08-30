<?php $unique_id = esc_attr( uniqid( 'search-form-' ) ); ?>

<form role="search" method="get" class="search-form" action="<?php echo esc_url( home_url( '/' ) ); ?>">
	<input type="search" id="<?php echo $unique_id; ?>" class="search-field" placeholder="Пошук" value="<?php echo get_search_query(); ?>" name="s" />
	<button type="submit" class="search-submit">
        <img src="<?php echo get_template_directory_uri();?>/assets/images/icon_search.svg" alt="Пошук" class="icon-search">
        <span class="screen-reader-text">
            Пошук
        </span>
        <i class="search_icon"></i>
    </button>
</form>
