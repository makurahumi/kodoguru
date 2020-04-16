$(function() {
  // 画像用inputを生成する関数
  const buildFileField = (num) => {
    const html = `<label class="js-file_group" data-index="${num}" for="restaurant_images_attributes_${num}_image">
                    <input class="js-file" type="file"
                     name="restaurant[images_attributes][${num}][image]"
                     id="restaurant_images_attributes_${num}_image"><br>
                  </label>`;
    return html;
  }

  // プレビュー用のimgタグを生成する関数
  const buildImage = (index, url) => {
    const html = `<div class="preview">
                    <img data-index="${index}" src="${url}" width="130px" height="110px"></br>
                    <label for="restaurant_images_attributes_${index}_src"  class= "js-edit" data-index="${index}"></br>
                    <div class="js-remove" data-index="${index}">削除</div>
                  </div>`
    return html;
  }

  // file_fieldのnameに動的なindexをつける
  let fileIndex = [1,2,3,4]

  // 既に使用されているindexを排除
  lastIndex = $(".js-file_group:last").data('index');
  fileIndex.splice(0, lastIndex);

  $('.hidden-destroy').hide();

  $('#image-field').on('change', '.js-file', function(e) {
    const targetIndex = $(this).parent().data('index');
    // ファイルのブラウザ上でのURLを取得
    const file = e.target.files[0];
    const blobUrl = window.URL.createObjectURL(file);

    // 該当indexを持つimgタグがあれば取得して変数imgに入れる（画像変更の処理）
    if (img = $(`img[data-index="${targetIndex}"]`)[0]) {
      img.setAttribute('src', blobUrl);
    } else {  // 新規画像の処理
      $('.js-file_group:last').append(buildImage(targetIndex,blobUrl));
      // fileIndexの先頭の数字を使って、inputを生成
      $('#previews').append(buildFileField(fileIndex[0]));
      fileIndex.shift();
      // 末尾に１足した数を追加する
      fileIndex.push(fileIndex[fileIndex.length - 1] + 1)
    }
  });

  // 新規投稿画像削除用
  $('#image-field').on('click', '.js-remove', function() {
    const targetIndex = $(this).parent().data('index');

      $(this).parent().parent().remove();
      $(`img[data-index="${targetIndex}"]`).remove();

      // 画像入力欄が0にならないようにする
      if ($('.js-file').length == 0) $('#image-field').append(buildFileField(fileIndex[0]));
  });

  // 編集ページ画像削除用
  $('#image-field').on('click', '.js-remove__edit', function() {
    const targetIndex = $(this).parent().data('index');
    // 該当indexを振られているチェックボックスを取得
    const hiddenCheck = $(`input[data-index="${targetIndex}"].hidden-destroy`);
    // もしチェックボックスが存在すればチェックを入れる
    if (hiddenCheck) hiddenCheck.prop("checked", true);

    $(this).parent().remove();
    $(`img[data-index="${targetIndex}"]`).remove();

    // 画像入力欄が0にならないようにする
    if ($('.js-file').length == 0) $('#image-field').append(buildFileField(fileIndex[0]));
  })
});