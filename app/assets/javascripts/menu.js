$(function() {
  const view_box = $('#photo-preview');

  $('.js-file__menu').on('change', function() {
    const fileprop = $(this).prop('files')[0]
          find_img = $(this).next('img')
          fileRdr = new FileReader();

    if(find_img.length){
      find_img.nextAll().remove();
      find_img.remove();
    }

    const img = '<img width="550px" height= "250px" alt="" class="img_view">';
 
    view_box.append(img);
     
    fileRdr.onload = function() {    
      view_box.find('img').attr('src', fileRdr.result);
    }
    fileRdr.readAsDataURL(fileprop);  
  });
});