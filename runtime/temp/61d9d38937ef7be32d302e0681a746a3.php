<?php /*a:4:{s:66:"/var/www/html/seckill-system/application/user/view/main/index.html";i:1609929113;s:67:"/var/www/html/seckill-system/application/user/view/public/head.html";i:1609936528;s:66:"/var/www/html/seckill-system/application/user/view/public/top.html";i:1609937034;s:67:"/var/www/html/seckill-system/application/user/view/public/menu.html";i:1609944849;}*/ ?>
<!doctype html>
<html class="x-admin-sm">
    <head>
        <meta charset="UTF-8">
<title>淘多多购物商城</title>
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
        <a href="./index.html">淘多多购物商城</a></div>
    <div class="left_open">
        <a><i title="展开左侧栏" class="iconfont">&#xe699;</i></a>
    </div>
    <ul class="layui-nav right" lay-filter="">
        <li class="layui-nav-item">
            <a href="javascript:;">user</a>
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
                    <a onclick="xadmin.add_tab('秒杀活动','sale.html')">
                    <i class="layui-icon">&#xe756;</i>
                    <cite>秒杀活动</cite>
                    <i class="iconfont nav_right">&#xe697;</i></a>
            </li>
            <li>
                <a href="javascript:;">
                    <a onclick="xadmin.add_tab('商品','goods.html')">
                    <i class="layui-icon">&#xe64a;</i>
                    <cite>商品</cite>
                    <i class="iconfont nav_right">&#xe697;</i></a>
            </li>
            <li>
                <a href="javascript:;">
                    <a onclick="xadmin.add_tab('购物车','trolley.html')">
                    <i class="layui-icon">&#xe698;</i>
                    <cite>购物车</cite>
                    <i class="iconfont nav_right">&#xe697;</i></a>
            </li>
            <li>
                <a href="javascript:;">
                    <a onclick="xadmin.add_tab('我的订单','orderlist.html')">
                    <i class="layui-icon">&#xe63c;</i>
                    <cite>我的订单</cite>
                    <i class="iconfont nav_right">&#xe697;</i></a>
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