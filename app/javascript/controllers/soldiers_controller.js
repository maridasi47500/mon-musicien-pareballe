$(function () {

	  $("#CarId2").click(function () {
		          var str = "";
		          $("select option:selected").each(function () {
				                  str += "<img src='" + $(this)[0].dataset.pic + "' border='0' style='padding: 3px;' alt=\"" + $(this).text() + "\" /> ";
				                });
		          $("#imagePreview").html(str);
		        });
});
