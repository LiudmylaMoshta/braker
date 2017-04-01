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
</div>







<?php get_footer(); ?>
