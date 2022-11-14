<?php
$options = get_option( 'medinova_theme_options' );
// echo "<pre>";
// print_r( $options );
// echo "</pre>";
?>

<div class="container-fluid py-5">
        <div class="container">
            <div class="row gx-5">
                <div class="col-lg-5 mb-5 mb-lg-0" style="min-height: 500px;">
                    <div class="position-relative h-100">
                        <img class="position-absolute w-100 h-100 rounded" src="<?php echo esc_attr($options['about_image']['url']) ?>" style="object-fit: cover;">
                    </div>
                </div>
                <div class="col-lg-7">
                    <div class="mb-4">
                        <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5"><?php echo esc_html( $options['about_sec_title'] ); ?></h5>
                        <h1 class="display-4"><?php echo esc_html( $options['about_short_desc'] ); ?></h1>
                    </div>
                    <p><?php echo esc_html( $options['about_long_desc'] ); ?></p>

                    <div class="row g-3 pt-3">

                    <?php
                    $about_features = $options['about_repeater'];
                    foreach ( $about_features as $about_feature ) { ?>

                        <div class="col-sm-3 col-6">
                            <div class="bg-light text-center rounded-circle py-4">
                                <i class="<?php echo esc_attr( $about_feature['feature_icon'] ); ?> text-primary mb-3"></i>
                                <h6 class="mb-0"><?php echo esc_html( $about_feature['feature_type'] ); ?><small class="d-block text-primary"><?php echo esc_html( $about_feature['feature_title'] ); ?></small></h6>
                            </div>
                        </div>

                    <?php
                         }
                    ?>

                    </div>
                </div>
            </div>
        </div>
    </div>