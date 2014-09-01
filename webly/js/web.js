$(document).ready(function () {
    //  $('#feedback').feedBackBox();


    var temp = "<div class=\"col-lg-4\" style=height:310px>" +
          "<div style=\"background:url(--bgurl--) #999;padding:10px\"><img class=\"img-circle\"  data-src=\"\" src=\"--imgsrc--\" style=\"border:2px solid #999;width: 100px; height: 100px;\"></div>" +
          "<h2>--uid--</h2>" +
          "<p>--text--</p>" +
          "<p><a class=\"btn btn-default\" href=\"#\" role=\"button\">View details »</a></p>" +
        "</div>";


    $.getJSON("data/col1.html", null, function (data) {
        var items = [];
        $.each(data.statuses, function (i, item) {
            //if (key =='text')
            items.push(replaceCU(temp.replace("--bgurl--", item.user.profile_background_image_url).replace("--imgsrc--", item.user.profile_image_url.replace('normal', 'bigger')).replace("--uid--", item.user.name).replace("--text--", item.text)));
        });

        $("<div/>", {
            "class": "row",
            html: items.join("")
        }).appendTo("#tlist");
    });

});
function replaceCU(str) {
    str = str.replace(/Columbia University|columbia university|Columbia|columbia/g, '<span class=highlight>Columbia University</span>');
    return str;
}