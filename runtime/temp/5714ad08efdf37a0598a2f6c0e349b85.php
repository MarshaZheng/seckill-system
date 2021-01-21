<?php /*a:2:{s:76:"/var/www/html/seckill-system/application/admin/view/main/add_item_brand.html";i:1610531114;s:68:"/var/www/html/seckill-system/application/admin/view/public/head.html";i:1609921784;}*/ ?>
<!DOCTYPE html>
<html class="x-admin-sm">
    
    <head>
        <meta charset="UTF-8">
<title>淘多多后台管理</title>
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="stylesheet" href="/static/css/font.css">
<link rel="stylesheet" href="/static/css/xadmin.css">
<!-- <link rel="stylesheet" href="./css/theme5.css"> -->
<script src="/static/lib/layui/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="/static/js/xadmin.js"></script>
    </head>
    <body>
        <div class="layui-fluid">
            <div class="layui-row">
                <form class="layui-form" action="/index.php/admin/Main/do_add_item_brand" method="post" enctype="multipart/form-data" >
                  <div class="layui-form-item">
                      <label for="username" class="layui-form-label">
                          <span class="x-red">*</span>品牌名称
                      </label>
                      <div class="layui-input-inline">
                          <input type="text" id="name" name="name" required="" lay-verify="required"
                          autocomplete="off" class="layui-input">
                      </div>
                  </div>
                  <div class="layui-form-item">
                    <label for="username" class="layui-form-label">
                        <span class="x-red">*</span>品牌类型
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="type" name="type" required="" lay-verify="required"
                        autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item layui-form-text">
                    <label class="layui-form-label">商品介绍</label>
                    <div class="layui-input-block">
                      <textarea name="desc" placeholder="请输入内容" class="layui-textarea"></textarea>
                    </div>
                  </div>
                  <div class="layui-form-item">
                              <label class="layui-form-label">商标图片</label>
                              <input type="file" name="image"  value="" onchange='PreviewImage(this)' />
                              <div id="photo_info" class="photo_info"></div>
                            </div>
                  <div class="layui-form-item">
                      <label for="L_repass" class="layui-form-label">
                      </label>
                      <button  class="layui-btn" lay-filter="add" lay-submit="" type="submit">
                          增加
                      </button>
                  </div>
              </form>
            </div>
        </div>
        <script>
         function PreviewImage(imgFile) {
            var filextension = imgFile.value.substring(imgFile.value
                    .lastIndexOf("."), imgFile.value.length);
            filextension = filextension.toLowerCase();
            if ((filextension != '.jpg') && (filextension != '.gif')
                    && (filextension != '.jpeg') && (filextension != '.png')
                    && (filextension != '.bmp')) {
                alert("对不起，系统仅支持标准格式的照片，请您调整格式后重新上传，谢谢 !");
                imgFile.focus();
            } else {
                var path;
                if (document.all)//IE
                {
                    imgFile.select();
                    path = document.selection.createRange().text;
                    document.getElementById("photo_info").innerHTML = "";
                    document.getElementById("photo_info").style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled='true',sizingMethod='scale',src=\""
                            + path + "\")";//使用滤镜效果      
                } else//FF
                {
                    path = window.URL.createObjectURL(imgFile.files[0]);// FF 7.0以上
                    //path = imgFile.files[0].getAsDataURL();// FF 3.0
                    document.getElementById("photo_info").innerHTML = "<img id='img1' width='120px' height='100px' src='"+path+"'/>";
                    //document.getElementById("img1").src = path;
                }
            }
        }
        </script>
    </body>

</html>
