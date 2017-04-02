<?php


function breaker() {
    wp_enqueue_style('style', get_template_directory_uri().'/style.css');
    wp_enqueue_script('script', get_template_directory_uri().'/fancybox/jquery.fancybox.js');

}
add_action('wp_enqueue_scripts', 'breaker');

/*menu*/
register_nav_menus(array(
    'Menu1'=>__('Menu1'),
    'Company'=>__('Company'),
    'Community'=>__('Community'),
));

function be_menu_item_classes( $classes ) {
    if (in_array('current-menu-item', $classes) ){
        $classes[] = 'active';
    }
    return $classes;
}
add_filter( 'nav_menu_css_class', 'be_menu_item_classes', 10, 3 );

/*thumbnails*/
add_theme_support( 'post-thumbnails' ); // для всех типов постов




//-------------------------------------------------------//


function breaker_customize_register( WP_Customize_Manager $wp_customize ) {
    /*bg-welcome-image*/

    $wp_customize->add_setting( 'theme_header_bg' );
    $wp_customize->add_section( 'theme_header_bg', array(
        'title'    => __( 'theme_header_bg', 'breaker' ),
        'priority' => 30,
    ) );
    $wp_customize->add_control(
        new WP_Customize_Image_Control(
            $wp_customize,'theme_header_bg',array(
                'label' => 'Header Background Image',
                'section' => 'title_tagline',
                'settings' => 'theme_header_bg',
                'priority' => 2
            )
        )
    );


//*Customize logo-image*/
    $wp_customize->add_setting( 'logo_image', array(
        'default'   => '',
        'transport' => 'refresh',
    ) );

    $wp_customize->add_section( 'logo', array(
        'title'    => __( 'Logo image', 'breaker' ),
        'priority' => 30,
    ) );

    $wp_customize->add_control( new WP_Customize_Upload_Control( $wp_customize, 'logo_image', array(
        'label'    => __( 'Upload logo', 'breaker' ),
        'section'  => 'logo',
        'settings' => 'logo_image',
    ) ) );

/*Customize image-welcome*/
    $wp_customize->add_setting( 'image welcome', array(
        'default'   => '',
        'transport' => 'refresh',
    ) );

    $wp_customize->add_section( 'image welcome', array(
        'title'    => __( 'image welcome', 'breaker' ),
        'priority' => 30,
    ) );

    $wp_customize->add_control( new WP_Customize_Upload_Control( $wp_customize, 'image welcome', array(
        'label'    => __( 'Upload logo', 'breaker' ),
        'section'  => 'image welcome',
        'settings' => 'image welcome',
    ) ) );

}

add_action('customize_register', 'breaker_customize_register');

// Custom Post Type
function my_custom_post_contact() {
    $labels = array(
        'name'               => _x( 'contact', 'our contact' ),
        'singular_name'      => _x( 'contact', 'post type singular name' ),
        'add_new'            => _x( 'added new', 'contact' ),
        'add_new_item'       => __( 'added new' ),
        'edit_item'          => __( 'edit contact' ),
        'new_item'           => __( 'new' ),
        'all_items'          => __( 'all contact' ),
        'view_item'          => __( 'view_item' ),
        'search_items'       => __( 'search' ),
        'not_found'          => __( 'Кnot_found' ),
        'parent_item_colon'  => '',
        'menu_name'          => 'contact'
    );
    $args = array(
        'labels'        => $labels,
        'description'   => 'contact',
        'public'        => true,
        'menu_position' => 5,
        'supports'      => array( 'title',
            'editor',
            'excerpt',
            'trackbacks',
            'custom-fields',
            'comments',
            'revisions',
            'thumbnail',
            'author',
            'page-attributes'),
        'has_archive'   => true,
    );
    register_post_type( 'contact', $args );




}
add_action( 'init', 'my_custom_post_contact' );



// Creates Movie Reviews Custom Post Type
function video_directors_init() {
    $args = array(
        'label' => 'Directors',
        'public' => true,
        'show_ui' => true,
        'capability_type' => 'post',
        'hierarchical' => false,
        'rewrite' => array('slug' => 'director'),
        'query_var' => true,
        'menu_icon' => 'dashicons-video-alt',
        'supports' => array(
            'title',
            'editor',
            'excerpt',
            'trackbacks',
            'custom-fields',
            'comments',
            'revisions',
            'thumbnail',
            'author',
            'page-attributes',)
    );
    register_post_type( 'video_directors', $args );
}
add_action( 'init', 'video_directors_init' );




add_action( 'init', 'work_directors_type' );

function work_directors_type() {

	// Регистрируем таксономию
	register_taxonomy(
		'name_directors', 'works_directors', array(
			'label' => 'name',
			'hierarchical' => true, // Если TRUE, таксономия будет аналогом рубрик (категорий). Если FALSE (по умолчанию), то таксономия станет аналогом меток (тегов).
			'rewrite' => array( 'slug' => 'name_directors' ),
		)
	);

	// Регистрируем произвольный тип записи (Custom Post Type)
	register_post_type( 'works_directors', array(
			'labels' => array(
				'name' => 'video_directors',
				'singular_name' => 'works_directors',
			),
			'public' => true,
			'rewrite' => array( 'slug' => 'works_directors' ), // Тут определяется ярлык CPT
			'has_archive' => true,
			'supports' => array( 'title', 'editor', 'thumbnail' ), // Включаем поддержку заголовка, редактора, миниатюры
		)
	);
}



//------------------------------------------META-BOX-----------------------------------------------------------------------
add_action('add_meta_boxes', 'my_extra_fields', 1);

function my_extra_fields() {
    add_meta_box( 'extra_fields', 'Section ExecutiveProducer', 'extra_fields_box_func', 'page', 'normal', 'high'  );
}
function extra_fields_box_func( $post ){
    ?>
    <h3><label><input type="text" name="extra[title-ExecutiveProducer]" value="<?php echo get_post_meta($post->ID, 'title-ExecutiveProducer', 1); ?>" style="width:50%" /> Title contact</label></h3>

    <h3><label><input type="text" name="extra[title-NameProducer]" value="<?php echo get_post_meta($post->ID, 'title-NameProducer', 1); ?>" style="width:50%" /> Name Executive Producer </label></h3>

    <div> Address company:
        <textarea type="text" name="extra[address]" style="width:100%;height:150px;"><?php echo get_post_meta($post->ID, 'address', 1); ?></textarea>
    </div>
    <span> Mail company:
        <textarea type="text" name="extra[mail]" style="width:100%;height:50px;"><?php echo get_post_meta($post->ID, 'mail', 1); ?></textarea>
    </span>


    <p>Видимость поста: <?php $mark_v = get_post_meta($post->ID, 'robotmeta', 1); ?>
        <label><input type="radio" name="extra[robotmeta]" value="" <?php checked( $mark_v, '' ); ?> /> index</label>
        <label><input type="radio" name="extra[robotmeta]" value="nofollow" <?php checked( $mark_v, 'nofollow' ); ?> /> nofollow</label>
        <label><input type="radio" name="extra[robotmeta]" value="noindex" <?php checked( $mark_v, 'noindex' ); ?> /> noindex</label>
        <label><input type="radio" name="extra[robotmeta]" value="noindex,nofollow" <?php checked( $mark_v, 'noindex,nofollow' ); ?> /> noindex,nofollow</label>
    </p>


    <input type="hidden" name="extra_fields_nonce" value="<?php echo wp_create_nonce(__FILE__); ?>" />
    <?php
}

// включаем обновление полей при сохранении
add_action('save_post', 'my_extra_fields_update', 0);

/* Сохраняем данные, при сохранении поста */
function my_extra_fields_update( $post_id ){
    if ( !isset($_POST['extra_fields_nonce']) || !wp_verify_nonce($_POST['extra_fields_nonce'], __FILE__) ) return false; // проверка
    if ( defined('DOING_AUTOSAVE') && DOING_AUTOSAVE  ) return false; // если это автосохранение
    if ( !current_user_can('edit_post', $post_id) ) return false; // если юзер не имеет право редактировать запись

    if( !isset($_POST['extra']) ) return false;

    // Все ОК! Теперь, нужно сохранить/удалить данные
    $_POST['extra'] = array_map('trim', $_POST['extra']);
    foreach( $_POST['extra'] as $key=>$value ){
        if( empty($value) ){
            delete_post_meta($post_id, $key); // удаляем поле если значение пустое
            continue;
        }

        update_post_meta($post_id, $key, $value); // add_post_meta() работает автоматически
    }
    return $post_id;
}

