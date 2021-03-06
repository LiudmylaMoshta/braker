<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?php bloginfo('name'); ?></title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<?php wp_head(); ?>
</head>
<body>
<?php
if( get_theme_mod( 'theme_header_bg' ) != '') { // if there is a background img
    $theme_header_bg = get_theme_mod('theme_header_bg'); // Assigning it to a variable to keep the markup clean
}
?>
<header id="header" style="background-image:url('<?php echo $theme_header_bg ?>');">

    <nav class="navbar navbar-modus">
        <div class="navbar-header navbar-header-beaker">
            <button type="button" class="navbar-toggle collapsed btn-collapsed-beaker" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="fa fa-reorder"></span>
            </button>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <?php
                wp_nav_menu( array(
                    'theme_location'=>'Menu1',
                    'menu_class'=>'nav navbar-nav navbar-left navbar-breaker'
                ))
            ;?>
        </div>
    </nav>
    <div class="image-welcome ">
        <img src="<?php echo get_theme_mod('image welcome'); ?>" class="img-responsive" alt="logo"/>
    </div>
</header>