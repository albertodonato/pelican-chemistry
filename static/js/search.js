$(document).ready(function() {
    var icon = $('#search-icon'),
        input = $('#tipue_search_input');
    
    input.keyup(function(e) {
        if(e.keyCode == 27){
            input.blur();
        }
    });
    icon.click(function(e) {
        e.preventDefault();
        input.show().focus();
    });
    input.blur(function() {
        input.hide();
    });
});
