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


// $(function() {
//   const buildImg = (url)=> {
//     const html = `<div class="preview">
//     <img src="${url}" width="100px" height="100px"></br>
//   </div>`;
//     return html;
//   }

//   $('.js-file__menu').on('change', '.js-file__menu', function(e) {
//     // ファイルのブラウザ上でのURLを取得する
//     const file = e.target.files[0];
//     const blobUrl = window.URL.createObjectURL(file);

//     // 該当indexを持つimgタグがあれば取得して変数imgに入れる（画像変更の処理）
//     if (img = $(`img`)[0]) {
//       img.setAttribute('src', blobUrl);
//     } else { //新規画像追加の処理
//       $('#previews').append(buildImg(blobUrl));
//     }
//   });
// });