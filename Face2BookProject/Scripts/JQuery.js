$(document).ready(function () {
    $("#btnSignUp").hover(function () {
        $(".fa-plus-circle").show("5000");
    },
        function () {
            $(".fa-plus-circle").hide("10");
        });
});
$(document).ready(function () {
    $("#btnLogin").hover(function () {
        $(".fa-chevron-circle-right").show("5000");
    },
        function () {
            $(".fa-chevron-circle-right").hide("10");
        });
});