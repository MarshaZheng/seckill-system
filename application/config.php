<?php
return [
    'captcha' => [
        //验证码的字符集
        'codeSet' => '123456789',
        //设置验证码大小
        'fontSize' => 13,
        //添加混淆曲线
        'useCurve' => false,
        //设置图片的高度、宽度
        'imageW' => 80,
        'imageH' => 25,
        //验证码位数
        'length' =>4,
        //验证成功后重置
        'reset' =>true
    ],
    'default_filter' => 'htmlspecialchars',
    'url_route_on' => true,
    'trace' => [
        'type' => 'html', // 支持 socket trace file
    ],
    //各模块公用配置
    'extra_config_list' => ['database', 'route'],
    //临时关闭日志写入
    'log' => [
        'type' => 'test',
    ],

    'app_debug' => true,

    // +----------------------------------------------------------------------
    // | 缓存设置
    // +----------------------------------------------------------------------
    'cache' => [
        // 驱动方式
        'type' => 'file',
        // 缓存保存目录
        'path' => CACHE_PATH,
        // 缓存前缀
        'prefix' => '',
        // 缓存有效期 0表示永久缓存
        'expire' => 0,
    ],

    //加密串
    'salt' => 'wZPb~yxvA!ir38&Z',

    //备份数据地址
    'back_path' => APP_PATH . '../data/'
];