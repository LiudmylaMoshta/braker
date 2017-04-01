<?php
/*
 Template name: contacts
 */

?>

<?php get_header(); ?>

<div class="container">
	<?php if ( have_posts() ) :  while ( have_posts() ) : the_post(); ?>
		<?php the_content(); ?>
	<?php endwhile; ?>
	<?php endif; ?>
		<ul class=" list-contact row">
			<?php
			$query = new WP_Query( array('post_type' => 'contact'  , 'posts_per_page' => 100 ) );
			if ($query->have_posts()):?>
				<?php while ( $query->have_posts() ) : $query->the_post(); ?>
					<li class="li-contact col-sm-4 col-md-4">
						<?php the_post_thumbnail( 'post-thumbnail', ['class' => 'img-responsive']); ?>
						<?php the_title('<h2 class="title-contact">','</h2>'); ?>
						<?php the_content(); ?>
						<?php $meta_value = get_post_meta($post->ID, 'mail', true);
						if(!empty($meta_value)) {
							echo '<a href="mailto: $meta_value" class="mail-contact">' . $meta_value . '</a>';
						} ?>
					</li>
				<?php endwhile; ?>
			<?php endif; wp_reset_postdata(); ?>
		</ul>
</div>


<?php get_footer(); ?>