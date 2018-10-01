$(document).ready(function(){

	var col1_data,col2_data,col3_data;

    col1_data = $(".first_col").html();
    col2_data = $(".middle_col").html();
    col3_data = $(".bottom_col").html();

    var w = $(window).width();

    if (w < 768)
    swap_columns();

    function swap_columns() {
        var w = $(window).width();
        if (w < 768) {
            $(".bottom_col").html(col1_data);
            $(".first_col").html(col3_data);
            $(".middle_col").html(col2_data);
        }
        else {
            $(".first_col").html(col1_data);
            $(".middle_col").html(col2_data);
            $(".bottom_col").html(col3_data);
        }
    }

    $(window).resize(function() {
        swap_columns();
    });
});
