$(function() {
  for (var i=0 ; i <= 3 ; i++) {
 　 showThumbnailWhenUploaded(i);
　}
});

function showThumbnailWhenUploaded(num) {
  $("input[type=file].file_zone" + num).change(function() {
    var file = $(this).prop('files')[0];
    var reader = new FileReader();
    reader.onload = function() {
      $("#upload" + num + " img" ).remove();
      var thumbnail = $('<img>').attr('src', reader.result);
      $("#upload" + num).append(thumbnail);
    }
    reader.readAsDataURL(file);
  });
}
