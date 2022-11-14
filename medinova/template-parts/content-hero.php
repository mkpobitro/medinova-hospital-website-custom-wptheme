<?php
$options = get_option( 'medinova_theme_options' );
?>
<div class="container-fluid bg-primary py-5 mb-5" style="background: url(<?php echo esc_attr($options['hero-image']['url']) ?>) top right no-repeat; background-size: cover;">
        <div class="container py-5">
            <div class="row justify-content-start">
                <div class="col-lg-8 text-center text-lg-start">
                    <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5" style="border-color: rgba(256, 256, 256, .3) !important;"><?php echo esc_html($options['hero-title']); ?></h5>
                    <h1 class="display-1 text-white mb-md-4"><?php echo esc_html($options['hero-tagline']); ?></h1>
                    <div class="pt-2">
                        <?php 
                        if($options['hero-btn-1'] != ''){ ?>
                            <a href="<?php echo esc_url($options['hero-btn-1-url']); ?>" class="btn btn-light rounded-pill py-md-3 px-md-5 mx-2"><?php echo esc_html($options['hero-btn-1']); ?></a>
                            <?php
                        }

                        if($options['hero-btn-2'] != ''){ ?>
                            <a href="<?php echo esc_url($options['hero-btn-2-url']); ?>" class="btn btn-outline-light rounded-pill py-md-3 px-md-5 mx-2"><?php echo esc_html($options['hero-btn-2']); ?></a>    
                        <?php
                        }
                        ?>

                    </div>
                </div>
            </div>
        </div>
    </div>