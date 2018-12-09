$(document).ready(function () {
    $("#btnSignUp").hover(function () {
        $(".fa-plus-circle").show("fast");
    },
        function () {
            $(".fa-plus-circle").hide("fast");
        });
});
$(document).ready(function () {
    $("#btnLogin").hover(function () {
        $(".fa-chevron-circle-right").show();
    },
        function () {
            $(".fa-chevron-circle-right").hide();
        });
});

$(document).ready(function () {
    $("#signuplink").on("mouseover", function () {
        $(this).css("color", "red");
    }).on("mouseout", function () {
        $(this).css("color", "black");
    });
});



