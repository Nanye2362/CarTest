$(function () {
    //更多筛选
    $("#more-con").on("click", function (e) {
        $("#more-conditions").find("i").toggleClass("ihover"),
                $("#more-conditions-detail").slideToggle("fast"),
                $("#more-conditions-detail").toggleClass("show"),
                $("#more-conditions-detail").hasClass("show") ? $("#qq").val("on") : $("#qq").val("off")
    });

    $('#exportBtn').on('click', function () {
        window.open(host + '/customer_carlist/export');
    });
})