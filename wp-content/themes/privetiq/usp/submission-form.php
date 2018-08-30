<?php // User Submitted Posts - Submission Form

if (!defined('ABSPATH')) die();

	if ($usp_options['disable_required']) {
		
		$usp_required = ''; 
		$usp_captcha  = '';
		
	} else {
		
		$usp_required = ' data-required="true" required';
		$usp_captcha  = ' user-submitted-captcha';
		
	}
	
	$usp_recaptcha_public  = (isset($usp_options['recaptcha_public'])  && !empty($usp_options['recaptcha_public']))  ? true : false;
	$usp_recaptcha_private = (isset($usp_options['recaptcha_private']) && !empty($usp_options['recaptcha_private'])) ? true : false;
	
	$usp_data_sitekey = isset($usp_options['recaptcha_public']) ? $usp_options['recaptcha_public'] : '';

	
?>

<!-- User Submitted Posts @ https://m0n.co/usp -->

<div id="user-submitted-posts">
	<?php if ($usp_options['usp_form_content'] !== '') echo $usp_options['usp_form_content']; ?>
	
	<form id="usp_form" method="post" enctype="multipart/form-data" action="">
		<div id="usp-error-message" class="usp-callout-failure usp-hidden">Будь ласка заповніть всі поля!</div>
		<?php echo usp_error_message();
		
		if (isset($_GET['success']) && $_GET['success'] == '1') :
			echo '<div id="usp-success-message">'. $usp_options['success-message'] .'</div>';
			echo '<a href="'. home_url('/') . '">На головну</a>';
		else :
		
		if ($usp_options['usp_name'] == 'show' || $usp_options['usp_name'] == 'optn') { ?>
		
		<fieldset class="usp-name">
			<label for="user-submitted-name">Ваше Ім`я</label>
			<input id="user-submitted-name" name="user-submitted-name" type="text" value="" placeholder=""<?php if (usp_check_required('usp_name')) echo $usp_required; ?> class="usp-input">
		</fieldset>
		<?php }if (($usp_options['usp_category'] == 'show' || $usp_options['usp_category'] == 'optn') && ($usp_options['usp_use_cat'] == false)) { ?>

            <fieldset class="usp-category">
                <label for="user-submitted-category">Оберіть категорію</label>
                <div class="my_usp-select">
                    <select id="user-submitted-category" name="user-submitted-category"<?php if (usp_check_required('usp_category')) echo $usp_required; ?> class="usp-select">
                        <?php foreach($usp_options['categories'] as $categoryId) { $category = get_category($categoryId); if (!$category) { continue; } ?>

                            <option value="<?php echo $categoryId; ?>"><?php $category = get_category($categoryId); echo sanitize_text_field($category->name); ?></option>
                        <?php } ?>

                    </select>
                </div>
            </fieldset>
        <?php } if ($usp_options['usp_title'] == 'show' || $usp_options['usp_title'] == 'optn') { ?>

            <fieldset class="usp-title">
                <label for="user-submitted-title">Заголовок історії</label>
                <input id="user-submitted-title" name="user-submitted-title" type="text" value="" placeholder=""<?php if (usp_check_required('usp_title')) echo $usp_required; ?> class="usp-input">
            </fieldset>
        <?php } if ($usp_options['usp_content'] == 'show' || $usp_options['usp_content'] == 'optn') { ?>

            <fieldset class="usp-content">
                <label for="user-submitted-content">Напишіть свою историю <span class="label_description">(не більше 9,000 символів)</span></label>
                <textarea id="user-submitted-content" name="user-submitted-content" rows="10" placeholder=""<?php if (usp_check_required('usp_content')) echo $usp_required; ?> class="usp-textarea" maxlength="9000"></textarea>
            </fieldset>
        <?php } if ($usp_options['usp_tags'] == 'show' || $usp_options['usp_tags'] == 'optn') { ?>
		
		<fieldset class="usp-tags">
			<label for="user-submitted-tags">Теги <span>(введіть через кому)</span></label>
			<input id="user-submitted-tags" name="user-submitted-tags" type="text" value="" placeholder=""<?php if (usp_check_required('usp_tags')) echo $usp_required; ?> class="usp-input">
		</fieldset>
		<?php } if ($usp_options['usp_email'] == 'show' || $usp_options['usp_email'] == 'optn') { ?>
            <fieldset class="usp-email">
                <label for="user-submitted-email">Ваш e-mail <span>(ніхто його  не дізнаєтся)</span> </label>
                <input id="user-submitted-email" name="user-submitted-email" type="text" value="" placeholder=""<?php if (usp_check_required('usp_email')) echo $usp_required; ?> class="usp-input">
            </fieldset>
        <?php } if ($usp_options['usp_captcha'] == 'show') { ?>
		
		<fieldset class="usp-captcha">
			<label for="user-submitted-captcha">Підтвердіть що ви не робот</label>
			<input id="user-submitted-captcha" name="user-submitted-captcha" type="text" value="" placeholder="<?php esc_attr_e('Antispam Question', 'usp'); ?>"<?php echo $usp_required; ?> class="usp-input<?php echo $usp_captcha; ?>" data-parsley-excluded="true">
		</fieldset>
		<?php } if ($usp_recaptcha_public && $usp_recaptcha_private && $usp_options['usp_recaptcha'] == 'show') { ?>
		
		<label for="user-submitted-category">Ви робот?</label>
		<div class="g-recaptcha" data-sitekey="<?php echo esc_attr($usp_data_sitekey); ?>"></div>
		
		<?php } ?>

		
		<div id="usp-submit">
			<?php if (!empty($usp_options['redirect-url'])) { ?>
			
			<input type="hidden" class="usp-hidden" name="redirect-override" value="<?php echo $usp_options['redirect-url']; ?>">
			<?php } ?>


			<?php if ($usp_options['usp_use_cat'] == true) { ?>
			
			<input type="hidden" class="usp-hidden" name="user-submitted-category" value="<?php
//            echo $usp_options['usp_use_cat_id'];
            echo get_the_ID();
            ?>">
			<?php } ?>
			
			<input type="submit" class="usp-submit" id="user-submitted-post" name="user-submitted-post" value="Додати історію">
            <a href="<?php home_url()?>" class="to_main">До історій</a>
			<?php wp_nonce_field('usp-nonce', 'usp-nonce', false); ?>
			
		</div>
		<?php endif; ?>

	</form>
</div>
<script>(function(){var e = document.getElementById('usp_verify'); if(e) e.parentNode.removeChild(e);})();</script>