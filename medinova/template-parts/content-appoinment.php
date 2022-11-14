<?php
$options = get_option( 'medinova_theme_options' );
?>

<div class="container-fluid bg-primary my-5 py-5">
        <div class="container py-5">
            <div class="row gx-5">
                <div class="col-lg-6 mb-5 mb-lg-0">
                    <div class="mb-4">
                        <h5 class="d-inline-block text-white text-uppercase border-bottom border-5"><?php echo esc_html($options['app_title']); ?></h5>
                        <h1 class="display-4"><?php echo esc_html($options['app_tagline']); ?></h1>
                    </div>
                    <p class="text-white mb-5"><?php echo esc_html($options['app_desc']); ?></p>
                    <a class="btn btn-dark rounded-pill py-3 px-5 me-3" href="<?php echo esc_url($options['app_btn_1_url']); ?>"><?php echo esc_html($options['app_btn_1']); ?></a>
                    <a class="btn btn-outline-dark rounded-pill py-3 px-5" href="<?php echo esc_url($options['app_btn_2_url']); ?>"><?php echo esc_html($options['app_btn_2']); ?></a>
                </div>


                <!-- appointment form shortcode -->
                
                <div class="col-lg-6">
                    <div class="bg-white text-center rounded p-5">
                        <h1 class="mb-4"><?php echo esc_html($options['app_form_title']); ?></h1>

                        <?php echo do_shortcode('[contact-form-7 id="81" title="Appointment Form"]'); ?>

                    </div>
                </div>


            </div>
        </div>
    </div>