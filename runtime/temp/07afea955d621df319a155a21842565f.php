<?php /*a:4:{s:67:"/var/www/html/seckill-system/application/admin/view/main/index.html";i:1610524499;s:68:"/var/www/html/seckill-system/application/admin/view/public/head.html";i:1609921784;s:67:"/var/www/html/seckill-system/application/admin/view/public/top.html";i:1609921843;s:68:"/var/www/html/seckill-system/application/admin/view/public/menu.html";i:1610554792;}*/ ?>
<!doctype html>
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
    <body class="index">
        <!-- 顶部开始 -->
        <div class="container">
    <div class="logo">
        <a href="./index.html">淘多多后台管理</a></div>
    <div class="left_open">
        <a><i title="展开左侧栏" class="iconfont">&#xe699;</i></a>
    </div>
    <ul class="layui-nav right" lay-filter="">
        <li class="layui-nav-item">
            <a href="javascript:;">admin</a>
            <dl class="layui-nav-child">
                <!-- 二级菜单 -->
                <dd>
                    <a onclick="xadmin.open('个人信息','http://www.baidu.com')">个人信息</a></dd>
                <dd>
                    <a onclick="xadmin.open('切换帐号','http://www.baidu.com')">切换帐号</a></dd>
                <dd>
                    <a href="./login.html">退出</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item to-index">
            <a href="/">前台首页</a></li>
    </ul>
</div>
        <!-- 顶部结束 -->
        <!-- 中部开始 -->
        <!-- 左侧菜单开始 -->
        <div class="left-nav">
    <div id="side-nav">
        <ul id="nav">
            <li>
                <a href="javascript:;">
                    <i class="layui-icon">&#xe68e;</i>
                    <cite>首页</cite>
                    <i class="iconfont nav_right">&#xe697;</i></a>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="layui-icon">&#xe64a;</i>
                    <cite>商品</cite>
                    <i class="iconfont nav_right">&#xe697;</i></a>
                <ul class="sub-menu">
                    <li>
                        <a onclick="xadmin.add_tab('商品列表','item_list.html')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>商品列表</cite></a>
                    </li>
                    <!-- <li>
                        <a onclick="xadmin.add_tab('添加商品','add_item.html')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>添加商品</cite></a>
                    </li> -->
                    <li>
                        <a onclick="xadmin.add_tab('商品分类','item_type_list.html')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>商品分类</cite></a>
                    </li>
                    <li>
                        <a onclick="xadmin.add_tab('品牌管理','item_brand_list.html')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>品牌管理</cite></a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="iconfont left-nav-li" lay-tips="订单管理">&#xe723;</i>
                    <cite>订单</cite>
                    <i class="iconfont nav_right">&#xe697;</i></a>
                <ul class="sub-menu">
                    <li>
                        <a onclick="xadmin.add_tab('订单列表','order_list.html')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>订单列表</cite></a>
                    </li>
                    <li>
                        <a onclick="xadmin.add_tab('订单设置','order_set.html')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>订单设置</cite></a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="layui-icon">&#xe653;</i>
                    <cite>营销</cite>
                    <i class="iconfont nav_right">&#xe697;</i></a>
                <ul class="sub-menu">
                    <li>
                        <a onclick="xadmin.add_tab('秒杀活动列表','sale-list.html')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>秒杀活动列表</cite></a>
                    </li>
                    <li>
                        <a onclick="xadmin.add_tab('广告列表','advertisement.html')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>广告列表</cite></a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="iconfont left-nav-li" lay-tips="管理员管理">&#xe726;</i>
                    <cite>权限</cite>
                    <i class="iconfont nav_right">&#xe697;</i></a>
                <ul class="sub-menu">
                    <li>
                        <a onclick="xadmin.add_tab('用户列表','admin-list.html')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>用户列表</cite></a>
                    </li>
                    <li>
                        <a onclick="xadmin.add_tab('角色管理','admin-role.html')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>角色管理</cite></a>
                    </li>
                    <li>
                        <a onclick="xadmin.add_tab('权限分类','admin-cate.html')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>权限分类</cite></a>
                    </li>
                    <li>
                        <a onclick="xadmin.add_tab('权限管理','admin-rule.html')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>权限管理</cite></a>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
</div>
        <!-- <div class="x-slide_left"></div> -->
        <!-- 左侧菜单结束 -->
        <!-- 右侧主体开始 -->
        <div class="page-content">
            <div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
                <ul class="layui-tab-title">
                    <li class="home">
                        <i class="layui-icon">&#xe68e;</i>我的桌面</li></ul>
                <div class="layui-unselect layui-form-select layui-form-selected" id="tab_right">
                    <dl>
                        <dd data-type="this">关闭当前</dd>
                        <dd data-type="other">关闭其它</dd>
                        <dd data-type="all">关闭全部</dd></dl>
                </div>
                <div class="layui-tab-content">
                    <div class="layui-tab-item layui-show">
                        <iframe src='./welcome.html' frameborder="0" scrolling="yes" class="x-iframe"></iframe>
                    </div>
                </div>
                <div id="tab_show"></div>
            </div>
        </div>
        <div class="page-content-bg"></div>
        <style id="theme_style"></style>
        <!-- 右侧主体结束 -->
        <!-- 中部结束 -->
        <script>//百度统计可去掉
            var _hmt = _hmt || []; (function() {
                var hm = document.createElement("script");
                hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
                var s = document.getElementsByTagName("script")[0];
                s.parentNode.insertBefore(hm, s);
            })();</script>
    </body>

</html>