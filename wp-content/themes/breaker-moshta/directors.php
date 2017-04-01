<?php
/*
 Template name: directors
 */
?>

<?php get_header(); ?>

<?php the_post_thumbnail( ); ?>
<?php if ( have_posts() ) :  while ( have_posts() ) : the_post(); ?>
	<?php the_content(); ?>
<?php endwhile; ?>
<?php endif; ?>



<ul class="list-directors">
	<?php
	$query = new WP_Query( array('post_type' => 'video_directors'  , 'posts_per_page' => 100 ) );
	if ($query->have_posts()):
		?>
		<?php while ( $query->have_posts() ) : $query->the_post(); ?>
		<li>
			<?php the_title('<h3 class="title-name">','</h3>'); ?>

	            <?php $meta_value = get_post_meta($post->ID, 'video', true);
	            if(!empty($meta_value)) {
		            echo '<div class="img-responsive thumbnail-directors">' . $meta_value . '</div>';
	            }
	            ?>
            <?php the_post_thumbnail('post-thumbnail', ['class' => 'img-responsive thumbnail-directors']); ?>
			<a href="<?php the_permalink(); ?>" title="link" class="link-more">
					<?php $meta_value = get_post_meta($post->ID, 'link bio', true);
					if(!empty($meta_value)) {
						echo '<span class="link-bio ">' . $meta_value . '</span>';
					} ?>
			</a>
		</li>
	<?php endwhile; ?>
	<?php endif; wp_reset_postdata(); ?>
</ul>

<?php get_footer(); ?>

