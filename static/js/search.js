$(document).ready(function() {
    var icon = $('#search-icon'),
        input = $('#tipue_search_input');
    
    input.keyup(function(e) {
        if(e.keyCode == 27){
            input.blur();
        }
    });
    input.blur(function() {
        input.hide();
    });
    icon.click(function(e) {
        e.preventDefault();
        input.toggle();
        if (input.is(':visible')) {
            input.focus();
        }
    });

    // Show by default if search critera is present
    if (input.val() !== '') {
        input.show();
    }
});
