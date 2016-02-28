$(function() {
  for (var i=0 ; i <= 3 ; i++) {
 　 image_thumnails(i);
　}
});

function image_thumnails(num) {
  $("input[type=file].file_zone" + num).change(function() {
    var file = $(this).prop('files')[0];
    var reader = new FileReader();
    reader.onload = function() {
      var img_src = $('<img>').attr('src', reader.result);
      $("#sub_img" + num).append(img_src);
    }
    reader.readAsDataURL(file);
  });
}
