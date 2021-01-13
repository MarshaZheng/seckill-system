<?php /*a:2:{s:70:"/var/www/html/seckill-system/application/admin/view/main/add_item.html";i:1610549118;s:68:"/var/www/html/seckill-system/application/admin/view/public/head.html";i:1609921784;}*/ ?>
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
        <div class="x-nav">
            <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
                <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i>
            </a>
        </div>
        <div class="layui-fluid">
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md12">
                    <div class="layui-card">
                        <div class="layui-card-body ">

                           

                          <form class="layui-form" action="/index.php/admin/Main/do_add_item"  enctype="multipart/form-data" method="post">
                            <div class="layui-form-item">
                              <label class="layui-form-label">商品分类</label>
                              <div class="layui-input-block">
                                <select name="type" lay-verify="required">
                                  <option value="">请选择</option>
                                  <?php if(is_array($list1) || $list1 instanceof \think\Collection || $list1 instanceof \think\Paginator): $i = 0; $__LIST__ = $list1;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo1): $mod = ($i % 2 );++$i;?>
                                  <tbody>
                                  <tr><option value=<?php echo htmlentities($vo1['name']); ?>><?php echo htmlentities($vo1['name']); ?></option></tr>
                                  </tbody><?php endforeach; endif; else: echo "" ;endif; ?>
                                </select>
                            </div>
                          </div>
                            <div class="layui-form-item">
                              <label class="layui-form-label">商品名称</label>
                              <div class="layui-input-block">
                                <input type="text" name="name" required lay-verify="required" placeholder="请输入商品名称" autocomplete="off" class="layui-input">
                            </div>
                          </div>
                            <div class="layui-form-item">
                              <label class="layui-form-label">商品品牌</label>
                              <div class="layui-input-block">
                                <select name="brand" lay-verify="required">
                                  <option value="">请选择</option>
                                  <?php if(is_array($list2) || $list2 instanceof \think\Collection || $list2 instanceof \think\Paginator): $i = 0; $__LIST__ = $list2;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo2): $mod = ($i % 2 );++$i;?>
                                  <tbody>
                                  <tr><option value=<?php echo htmlentities($vo2['name']); ?>><?php echo htmlentities($vo2['name']); ?></option></tr>
                                  </tbody><?php endforeach; endif; else: echo "" ;endif; ?>
                                </select>
                            </div>
                          </div>
                          <div class="layui-form-item">
                            <label class="layui-form-label">是否可见</label>
                            <div class="layui-input-block">
                              <input type="radio" name="status" value="1" title="是" checked>
                              <input type="radio" name="status" value="0" title="否" >
                            </div>
                          </div>
                            <div class="layui-form-item">
                              <label class="layui-form-label">商品图片</label>
                              <input type="file" name="image"  onchange='PreviewImage(this)' />
                              <div id="photo_info" class="photo_info"></div>
                            </div>
                          </div>
                            <div class="layui-form-item layui-form-text">
                              <label class="layui-form-label">商品介绍</label>
                              <div class="layui-input-block">
                                <textarea name="desc" placeholder="请输入内容" class="layui-textarea"></textarea>
                              </div>
                            </div>
                            <div class="layui-form-item">
                              <div class="layui-form-item">
                                <label class="layui-form-label">商品售价</label>
                                <div class="layui-input-block">
                                  <input type="text" name="price" required lay-verify="required" placeholder="请输入商品售价" autocomplete="off" class="layui-input">
                              </div>
                            </div>
                              <div class="layui-form-item">
                                <label class="layui-form-label">商品库存</label>
                                <div class="layui-input-block">
                                  <input type="text" name="amount" required lay-verify="required" placeholder="请输入商品库存" autocomplete="off" class="layui-input">
                              </div>
                            </div>
                            <div class="layui-form-item">
                              <label class="layui-form-label">计量单位</label>
                              <div class="layui-input-block">
                                <input type="text" name="unit" required lay-verify="required" placeholder="请输入计量单位" autocomplete="off" class="layui-input">
                            </div>
                          </div>
                              <div class="layui-input-block">
                                <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                              </div>
                            </div>
                          <script>
                          //Demo
                          layui.use('form', function(){
                            var form = layui.form;
                          });
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
                          //Demo
                          // layui.use('form', function(){
                          //   var form = layui.form;
                          //   form.on('submit(main)', function (data) {
                          //       $.ajax({
                          //           url:'/index.php/admin/main/do_add_item',
                          //           type:'post',
                          //           data:data.field,
                          //           dataType:"json",
                          //           success:function(data){
                          //               if(data=1){
                          //                   layer.alert("提交成功！")
                          //               }
                          //               else{
                          //                   layer.alert("提交失败1！")
                          //               }
                          //           },
                          //           error:function(e){
                          //           layer.alert("提交失败2！")
                          //           },
                                    
                          //       });
                          //       return false;
                          //   });
                          // });
                          </script>
                          </form>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
        
    </body>
    

</html>