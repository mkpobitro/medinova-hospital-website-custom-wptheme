<?php
$options = get_option( 'medinova_theme_options' );
?>

<div class="container-fluid py-5">
        <div class="container">
            <div class="text-center mx-auto mb-5" style="max-width: 500px;">
                <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5"><?php echo esc_html($options['package_title']); ?></h5>
                <h1 class="display-4"><?php echo esc_html($options['package_short_title']); ?></h1>
            </div>

            <div class="owl-carousel price-carousel position-relative" style="padding: 0 45px 45px 45px;">

            <?php  
            $args = array(
                'post_type' => 'package',
                'max_num_pages' => -1,
            );
            $packages = new WP_Query($args);

            while($packages->have_posts()){
                $packages->the_post(); 
                ?>

                <div class="bg-light rounded text-center">
                    <div class="position-relative">
                        <img class="img-fluid rounded-top" src="<?php the_post_thumbnail('medium'); ?>" alt="">
                        <div class="position-absolute w-100 h-100 top-50 start-50 translate-middle rounded-top d-flex flex-column align-items-center justify-content-center" style="background: rgba(29, 42, 77, .8);">
                            <h3 class="text-white"><?php the_title(); ?></h3>
                            <h1 class="display-4 text-white mb-0">
                                <small class="align-top fw-normal" style="font-size: 22px; line-height: 45px;">$</small><?php the_field('pricing_package_amount'); ?><small class="align-bottom fw-normal" style="font-size: 16px; line-height: 40px;">/ <?php the_field('package_type'); ?></small>

                            </h1>
                        </div>
                    </div>
                    <div class="text-center py-5">
                        <?php apply_filters('the_content', the_content()); ?>
                        <a href="<?php the_field('button_url'); ?>" class="btn btn-primary rounded-pill py-3 px-5 my-2"><?php the_field('package_button_label'); ?></a>
                    </div>
                </div>

                <?php
            }

            wp_reset_query();
            ?>

            </div>

        </div>
    </div>