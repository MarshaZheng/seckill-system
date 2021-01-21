<?php /*a:1:{s:70:"/var/www/html/seckill-system/application/admin/view/main/add_sale.html";i:1611204270;}*/ ?>
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
                <form class="layui-form" action="/index.php/admin/Main/do_add_sale"  method="post">
                    <div class="layui-form-item">
                        <label class="layui-form-label">促销商品</label>
                        <div class="layui-input-block">
                          <select name="item_id" lay-verify="required">
                            <option value="">请选择</option>
                            <?php if(is_array($list) || $list instanceof \think\Collection || $list instanceof \think\Paginator): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                            <tbody>
                            <tr><option value=<?php echo htmlentities($vo['id']); ?>>id:<?php echo htmlentities($vo['id']); ?> 名称：<?php echo htmlentities($vo['name']); ?> 单价：¥<?php echo htmlentities($vo['price']); ?> 库存：<?php echo htmlentities($vo['amount']); ?><?php echo htmlentities($vo['unit']); ?></option></tr>
                            </tbody><?php endforeach; endif; else: echo "" ;endif; ?>
                          </select>
                      </div>
                    </div>
                    <div class="layui-form-item">
                        <label  class="layui-form-label">
                            <span class="x-red">*</span>促销售价</label>
                        <div class="layui-input-inline">
                            <input type="text"  name="price" required="" lay-verify="required" autocomplete="off" class="layui-input"></div>
                       </div>
                       <div class="layui-form-item">
                        <label  class="layui-form-label">
                            <span class="x-red">*</span>原售价</label>
                        <div class="layui-input-inline">
                            <input type="text"  name="old_price" required="" lay-verify="required" autocomplete="off" class="layui-input"></div>
                       </div>
                       <div class="layui-form-item">
                       <label  class="layui-form-label">
                           <span class="x-red">*</span>数量</label>
                       <div class="layui-input-inline">
                           <input type="text"  name="amount" required="" lay-verify="required" autocomplete="off" class="layui-input"></div>
                      </div>
                      <div class="layui-form-item">
                        <label  class="layui-form-label">
                            <span class="x-red">*</span>开始时间</label>
                      <div class="layui-inline"> <!-- 注意：这一层元素并不是必须的 -->
                        <input type="text" class="layui-input" id="start_time" name="start_time" lay-verify="required">
                      </div>
                    </div>
                    <div class="layui-form-item">
                        <label  class="layui-form-label">
                            <span class="x-red">*</span>结束时间</label>
                      <div class="layui-inline"> <!-- 注意：这一层元素并不是必须的 -->
                        <input type="text" class="layui-input" id="end_time" name="end_time" lay-verify="required|same">
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
                same: function(value) {
                        if ($('#start_time').val() >= $('#end_time').val()) {
                            return '结束时间不能早于开始时间';
                        }
                }
            });
        });
        layui.use('laydate', function(){
            var laydate = layui.laydate;
            
            //执行一个laydate实例
            laydate.render({
                elem: '#start_time' //指定元素
                ,type: 'datetime'
            });
            laydate.render({
                elem: '#end_time' //指定元素
                ,type: 'datetime'
            });
        });
    
      </script>
    </body>

</html>