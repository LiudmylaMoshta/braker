<?php
/*
 Template name: directors
 */


 get_header();

// the_post_thumbnail( );

if ( have_posts() ) {
	while ( have_posts() ) {
		the_post();
		the_content();
	}
}
?>



<ul class="list-directors">
	<?php
	$directors = new WP_Query( array('post_type' => 'video_directors'  , 'posts_per_page' => 100 ) );
	if ($directors->have_posts()):
		 while ( $directors->have_posts() ) : $directors->the_post(); ?>
		<li>
			<?php
                the_title('<h3 class="title-name">','</h3>');
                the_post_thumbnail('post-thumbnail', ['class' => 'img-responsive thumbnail-directors']);
            ?>
			<a href="<?php the_permalink(); ?>" title="link" class="link-more">
					<?php $meta_value = get_post_meta($post->ID, 'link bio', true);
					if(!empty($meta_value)) {
						echo '<span class="link-bio ">' . $meta_value . '</span>';
					} ?>
			</a>
		</li>
	<?php endwhile;
    endif; wp_reset_postdata(); ?>
</ul>

<?php get_footer(); ?>

