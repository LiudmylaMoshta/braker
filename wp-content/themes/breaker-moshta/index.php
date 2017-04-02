<?php
/*
 Template name: home
 */
?>

<?php get_header(); ?>

<div class="container">
    <?php the_post_thumbnail( ); ?>
    <?php if ( have_posts() ) :  while ( have_posts() ) : the_post(); ?>
        <?php the_content(); ?>

    <?php endwhile; ?>
    <?php endif; ?>

    <ul class="row row-gallery">

	    <?php
	    $query = new WP_Query( array('post_type' => 'works_directors'  , 'posts_per_page' => 6 ) );
	    if ($query->have_posts()):
		    ?>
		    <?php while ( $query->have_posts() ) : $query->the_post(); ?>
            <li class="col-md-4 home_gallery">
	            <?php
	            if (has_post_thumbnail()) { ?>
                    <a data-fancybox="gallery" alt = "thumbnail" href="<?php echo get_the_content(); ?>"  >
			            <?php the_post_thumbnail('', array(
				            'class' => "img-responsive video-thumbnail"
				            )); ?>
                    </a>
                    <p class="thumnbnail-caption"><?php echo get_post(get_post_thumbnail_id())->post_excerpt;?></p>
	            <?php } ?>
			    <?php the_title('<h3 class="title-name">','</h3>'); ?>

            </li>
	    <?php endwhile; ?>
	    <?php endif; wp_reset_postdata(); ?>
    </ul>
</div>







<?php get_footer(); ?>
