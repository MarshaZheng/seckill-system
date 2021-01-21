<?php /*a:1:{s:70:"/var/www/html/seckill-system/application/admin/view/main/add_rule.html";i:1611197974;}*/ ?>
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
                <form class="layui-form" action="/index.php/admin/Main/do_add_rule"  method="post">
                    <div class="layui-form-item">
                        <label for="L_email" class="layui-form-label">
                            <span class="x-red">*</span>规则名</label>
                        <div class="layui-input-inline">
                            <input type="text" name="rule" required="" lay-verify="required" autocomplete="off" class="layui-input"></div>
                    </div>
                    <div class="layui-form-item">
                        <label for="L_email" class="layui-form-label">
                            <span class="x-red">*</span>模型</label>
                        <div class="layui-input-inline">
                            <input type="text" name="m" required="" lay-verify="required|check" autocomplete="off" class="layui-input"></div>
                            <div class="layui-form-mid layui-word-aux">只能是英文和下划线</div>
                    </div>
                    <div class="layui-form-item">
                        <label for="L_email" class="layui-form-label">
                            <span class="x-red">*</span>控制器</label>
                        <div class="layui-input-inline">
                            <input type="text" name="c" required="" lay-verify="required|check" autocomplete="off" class="layui-input"></div>
                            <div class="layui-form-mid layui-word-aux">只能是英文和下划线</div>
                    </div>
                    <div class="layui-form-item">
                        <label for="L_email" class="layui-form-label">
                            <span class="x-red">*</span>方法</label>
                        <div class="layui-input-inline">
                            <input type="text" name="a" required="" lay-verify="required|check" autocomplete="off" class="layui-input"></div>
                            <div class="layui-form-mid layui-word-aux">只能是英文和下划线</div>
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
                    check: function(value){
                        //alert(/^[a-zA-Z]\w{2,14}$/.test(value));
                        if(! /^[a-zA-Z]\w{1,14}$/.test(value)){
                            return '只能是英文和下划线';
                        }
                    }
                });
            });
        
        
          </script>
    </body>

</html>