互联网开发：期末作业
淘多多商城
# 功能介绍
## 后台管理系统
+ 后台管理系统
    +  登录
        + 验证码
        + 验证账号密码
    + 主页
    	  + 信息统计
        + 商品管理
            + 商品列表
            		+ 新增商品
            		+ 删除商品
        	+  商品分类
        		+ 新增分类
            		+ 删除分类 
            	+ 品牌管理
            		+ 新增品牌
            		+ 删除品牌
        + 订单管理
        	+ 订单列表
        + 营销管理
        	+ 秒杀活动列表
        		+ 新增秒杀活动
        	+ 广告列表
        		+ 增加广告
        		+ 删除广告
        + 用户管理
            + 管理员管理
           		+ 增加管理员
        		+ 删除管理员
            + 角色管理
            		+ 添加角色
            		+ 删除角色
            + 权限管理
            		+ 添加规则
            		+ 删除规则
        + 日志管理
        	+ 日志列表 

## 客户端

+ 秒杀商城
    + 登录页
        + 登录
        	+ 验证码
        + 注册
    + 主页
   	 + 横幅广告
   	 + 新产品推荐
   	 + 秒杀促销产品推荐
    + 商城
    	+ 商品大全（不包括秒杀）
    + 商品详情
    	+ 普通商品直接购买
    	+ 秒杀商品限时限量购买

# 部署说明
+ 在web文件根目录下git clone https://github.com/MarshaZheng/seckill-system
+ 需安装captcha2.
+ apache/nginx文件根目录修改为public下
+ 导入data下的sql文件, 修改config下的数据库名称和密码
+ 后台超级管理员账号root，密码123456
+ 后台登录地址: http://localhost/index.php/admin/login/index
+ 后台主页地址: http://localhost/index.php/admin/main/index
+ 前台账号test，密码123456
+ 前台登录地址: http://localhost/index.php/user/login/index
+ 前台登录地址: http://localhost/index.php/user/main/index
+ 默认控制器方法是user/main/index
+ tips:
	+ 如果增加秒杀活动的时间选择器打不开，可以尝试最大化页面
	+ 如果登录界面的验证码无法显示，可以尝试输入完整的url：127.0.0.1/index.php/admin/login/index
