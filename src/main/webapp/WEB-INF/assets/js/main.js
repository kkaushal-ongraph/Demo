jQuery(document).ready(function(){
    jQuery("#upload_link").on('click', function(e){
        e.preventDefault();
        jQuery("#upload:hidden").trigger('click');
    });

});

/**profile-image**/
function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            jQuery('#profile')
                .attr('src', e.target.result)                
        };

        reader.readAsDataURL(input.files[0]);
    }
};