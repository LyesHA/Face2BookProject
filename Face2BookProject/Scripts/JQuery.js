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
        $(".fa-chevron-circle-right").show("fast");
    },
        function () {
            $(".fa-chevron-circle-right").hide("fast");
        });
});

$(document).ready(function () {
    $("#signuplink").on("mouseover", function () {
        $(this).css("color", "red");
    }).on("mouseout", function () {
        $(this).css("color", "black");
   });
});

