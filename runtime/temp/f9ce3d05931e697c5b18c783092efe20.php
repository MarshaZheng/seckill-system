<?php /*a:1:{s:71:"/var/www/html/seckill-system/application/admin/view/main/add_admin.html";i:1611196534;}*/ ?>
<!DOCTYPE html>
<html class="x-admin-sm">
    
    <head>
        <meta charset="UTF-8">
        <title>淘多多商城-用户登录</title>
        <meta name="renderer" content="webkit|ie-comp|ie-stand">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
        <meta http-equiv="Cache-Control" content="no-siteapp" />
        <link rel="stylesheet" href="/static/css/font.css">
        <link rel="stylesheet" href="/static/css/login.css">
        <link rel="stylesheet" href="/static/css/xadmin.css">
        <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
        <script src="/static/lib/layui/layui.js" charset="utf-8"></script>
        <!--[if lt IE 9]>
        <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
        <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <div class="layui-fluid">
            <div class="layui-row">
                <form class="layui-form" action="/index.php/admin/Main/do_add_admin"  method="post">
                    <div class="layui-form-item">
                        <label class="layui-form-label">角色</label>
                        <div class="layui-input-block">
                          <select name="role" lay-verify="required">
                            <option value="">请选择</option>
                            <?php if(is_array($list) || $list instanceof \think\Collection || $list instanceof \think\Paginator): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                            <tbody>
                            <tr><option value=<?php echo htmlentities($vo['name']); ?>><?php echo htmlentities($vo['name']); ?></option></tr>
                            </tbody><?php endforeach; endif; else: echo "" ;endif; ?>
                          </select>
                      </div>
                    </div>
                    <div class="layui-form-item">
                        <label for="L_email" class="layui-form-label">
                            <span class="x-red">*</span>用户名</label>
                        <div class="layui-input-inline">
                            <input type="text" id="L_username" name="username" required="" lay-verify="required|name" autocomplete="off" class="layui-input"></div>
                        <div class="layui-form-mid layui-word-aux">
                            <span class="x-red">*</span>字母开头，可以包含字母、数字、下划线，3-15个字符</div></div>
                    <div class="layui-form-item">
                        <label for="L_pass" class="layui-form-label">
                            <span class="x-red">*</span>密码</label>
                        <div class="layui-input-inline">
                            <input type="password" id="L_pass" name="pass" required="" lay-verify="required|password" autocomplete="off" class="layui-input"></div>
                        <div class="layui-form-mid layui-word-aux">密码必须6到20位，只能是字母和数字</div></div>
                    <div class="layui-form-item">
                        <label for="L_repass" class="layui-form-label">
                            <span class="x-red">*</span>确认密码</label>
                        <div class="layui-input-inline">
                            <input type="password" id="L_repass" name="repass" required="" lay-verify="required|repass" autocomplete="off" class="layui-input"></div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">是否可见</label>
                        <div class="layui-input-block">
                          <input type="radio" name="status" value="1" title="是" checked>
                          <input type="radio" name="status" value="0" title="否" >
                        </div>
                      </div>
                    <div class="layui-form-item">
                        <label for="L_repass" class="layui-form-label"></label>
                        <button class="layui-btn" lay-filter="add" lay-submit="">增加</button></div>
                </form>
            </div>
        </div>
      <script type="text/javascript">
    
        layui.use("form", function() {
            var form = layui.form;
            var laydate = layui.laydate;
            form.verify({
                name: function(value){
                    //alert(/^[a-zA-Z]\w{2,14}$/.test(value));
                    if(! /^[a-zA-Z]\w{2,14}$/.test(value)){
                        return '字母开头，可以包含字母、数字、下划线，3-15个字符';
                    }
                }
                ,phone: function(value){
                    //alert(/^[a-zA-Z]\w{2,14}$/.test(value));
                    if(! /^[0-9]\w{10}$/.test(value)){
                        return '手机号只能是11位数字';
                    }
                }
                ,password: function(value){
                    if(! /^[a-zA-Z0-9]{6,20}$/.test(value)){
                        return '密码必须6到20位，只能是字母和数字';
                    }
                }
                ,repass: function(value) {
                        if ($('#L_pass').val() != $('#L_repass').val()) {
                            return '两次密码不一致';
                        }
                }
            });
        });
    
    
      </script>
    </body>

</html>