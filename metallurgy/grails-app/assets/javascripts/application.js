// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better
// to create separate JavaScript files as needed.
//
//= require jquery-2.2.0.min.js
//= require bootstrap
//= require js/material.min.js
//= require js/moment.min.js
//= require js/nouislider.min.js
//= require js/bootstrap-datetimepicker.js
//= require js/bootstrap-selectpicker.js
//= require js/bootstrap-tagsinput.js
//= require js/material-kit.js
//= require js/blueimp/jquery.bsPhotoGallery.js
//= require js/blueimp/blueimp-gallery.min.js
//= require js/ekko-lightbox.min.js
//= require jquery.dataTables.min.js
//= require select2.js
//= require_tree .
//= require_self

if (typeof jQuery !== 'undefined') {
    (function($) {
        $(document).ajaxStart(function() {
            $('#spinner').fadeIn();
        }).ajaxStop(function() {
            $('#spinner').fadeOut();
        });
    })(jQuery);
}
