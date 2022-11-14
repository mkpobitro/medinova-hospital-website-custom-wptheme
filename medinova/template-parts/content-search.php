<?php
$options = get_option( 'medinova_theme_options' );
?>


<div class="container-fluid bg-primary my-5 py-5">
        <div class="container py-5">
            <div class="text-center mx-auto mb-5" style="max-width: 500px;">
                <h5 class="d-inline-block text-white text-uppercase border-bottom border-5"><?php echo esc_html($options['dr_search_title']); ?></h5>
                <h1 class="display-4 mb-4"><?php echo esc_html($options['dr_search_short_title']); ?></h1>
                <h5 class="text-white fw-normal"><?php echo esc_html($options['dr_search_desc']); ?></h5>
            </div>

             
                

        <!-- Find a Doctor Form shortcode -->
         <!-- <?php echo do_shortcode('[contact-form-7 id="109" title="Search Doctor Form"]'); ?> -->

      

            <div class="mx-auto" style="width: 100%; max-width: 600px;">
                <div class="input-group">
                    <select class="form-select border-primary w-25" style="height: 60px;">
                        <option selected>Department</option>
                        <option value="1">Department 1</option>
                        <option value="2">Department 2</option>
                        <option value="3">Department 3</option>
                    </select>
                    <input type="text" class="form-control border-primary w-50" placeholder="Keyword">
                    <button class="btn btn-dark border-0 w-25">Search</button>
                </div>
            </div>

        </div>
    </div>