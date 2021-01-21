# 目录
<!-- TOC -->autoauto- [目录](#目录)auto- [功能介绍](#功能介绍)auto    - [后台管理系统](#后台管理系统)auto    - [客户端](#客户端)auto- [系统功能实现](#系统功能实现)auto    - [后台管理系统](#后台管理系统-1)auto        - [登录](#登录)auto        - [数据统计](#数据统计)auto        - [商品列表](#商品列表)auto        - [添加商品](#添加商品)auto        - [商品分类](#商品分类)auto        - [品牌列表](#品牌列表)auto        - [添加品牌](#添加品牌)auto        - [订单列表](#订单列表)auto        - [秒杀管理](#秒杀管理)auto        - [添加秒杀活动](#添加秒杀活动)auto        - [广告列表](#广告列表)auto        - [添加广告](#添加广告)auto        - [管理员列表](#管理员列表)auto        - [添加管理员](#添加管理员)auto        - [角色列表](#角色列表)auto        - [添加角色](#添加角色)auto        - [规则列表](#规则列表)auto        - [添加规则](#添加规则)auto        - [日志列表](#日志列表)auto    - [客户端](#客户端-1)auto        - [登录](#登录-1)auto        - [注册](#注册)auto        - [首页：广告](#首页广告)auto        - [首页：新品推荐](#首页新品推荐)auto        - [首页：秒杀商品](#首页秒杀商品)auto        - [商城](#商城)auto        - [普通商品详情](#普通商品详情)auto        - [秒杀商品详情](#秒杀商品详情)auto        - [我的订单](#我的订单)auto- [性能优化策略及实现](#性能优化策略及实现)auto    - [nginx](#nginx)auto    - [ajax异步处理](#ajax异步处理)auto- [应用安全策略及实现](#应用安全策略及实现)auto    - [前端检查输入合法性](#前端检查输入合法性)auto        - [效果图](#效果图)auto        - [核心代码](#核心代码)auto    - [验证码](#验证码)auto        - [效果图](#效果图-1)auto        - [核心代码](#核心代码-1)auto    - [token](#token)auto        - [效果图](#效果图-2)auto        - [核心代码](#核心代码-2)auto    - [权限验证](#权限验证)auto        - [效果图](#效果图-3)auto        - [核心代码](#核心代码-3)auto    - [按钮灰色](#按钮灰色)auto        - [效果图](#效果图-4)auto        - [核心代码](#核心代码-4)auto    - [后端会检查时间](#后端会检查时间)auto        - [效果图](#效果图-5)auto        - [核心代码](#核心代码-5)auto- [部署说明](#部署说明)autoauto<!-- /TOC -->
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
    
# 系统功能实现
## 后台管理系统
### 登录
效果图
<img scr="data/img/0.png" width="700px"\>

### 数据统计
效果图
<img scr="data/img/1.png" width="700px"\>
### 商品列表
效果图
<img scr="data/img/2.png" width="700px"\>
### 添加商品
效果图
<img scr="data/img/3.png" width="700px"\>
### 商品分类
效果图
<img scr="data/img/4.png" width="700px"\>
### 品牌列表
效果图
<img scr="data/img/5.png" width="700px"\>
### 添加品牌
效果图
<img scr="data/img/6.png" width="700px"\>
### 订单列表
效果图
<img scr="data/img/7.png" width="700px"\>
### 秒杀管理
效果图
<img scr="data/img/8.png" width="700px"\>
### 添加秒杀活动
效果图
<img scr="data/img/9.png" width="700px"\>
### 广告列表
 效果图
<img scr="data/img/10.png" width="700px"\>
### 添加广告
 效果图
<img scr="data/img/11.png" width="700px"\>
### 管理员列表
 效果图
<img scr="data/img/12.png" width="700px"\>
### 添加管理员
 效果图
<img scr="data/img/13.png" width="700px"\>
### 角色列表
 效果图
<img scr="data/img/14.png" width="700px"\>
### 添加角色
 效果图
<img scr="data/img/15.png" width="700px"\>
### 规则列表
 效果图
<img scr="data/img/16.png" width="700px"\>
### 添加规则
 效果图
<img scr="data/img/17.png" width="700px"\>
### 日志列表
 效果图
<img scr="data/img/18.png" width="700px"\>


## 客户端
### 登录
 效果图
<img scr="data/img/19.png" width="700px"\>
### 注册
 效果图
<img scr="data/img/19.5.png" width="700px"\>
### 首页：广告
 效果图
<img scr="data/img/20.png" width="700px"\>
### 首页：新品推荐
 效果图
<img scr="data/img/21.png" width="700px"\>
### 首页：秒杀商品
 效果图
<img scr="data/img/22.png" width="700px"\>
### 商城
 效果图
<img scr="data/img/23.png" width="700px"\>
### 普通商品详情
 效果图
<img scr="data/img/24.png" width="700px"\>
### 秒杀商品详情
 效果图
（到时间按钮才可以点）
<img scr="data/img/25.png" width="700px"\>
### 我的订单
 效果图
<img scr="data/img/26.png" width="700px"\>


# 性能优化策略及实现
## nginx

+ 更快

	单次请求更快，高峰期也更快



+ 高扩展性

	极具扩展性，它由多个不同功能、不同层次、不同类型且耦合度极高的模块组成，这种低耦合的设计，造就了它庞大的第三方模块

 

+ 高可靠性

	每个worker进程相对独立，master进程在某个worker进程出错时能迅速拉起新的worker进程
	
	nginx的可靠性来源于其核心框架代码的优秀设计、模块设计的简单性。
	
	官方提供的常用模块都很稳定。
 

+ 低内存消耗

	一般情况下10000个非活跃的keep-alive连接仅消耗2.5M的内存


+ 单机支持10万以上的并发连接

	nginx支持的并发连接上限取决于内存，10万远没封顶


+ 热部署

	master管理进程
	
	worker工作进程
	
## ajax异步处理
	
后台管理员进行删除时，都是通过AJAX异步删除，提高使用流畅度。

```javascript
function member_del(obj,id){
        layer.confirm('确认要删除吗？',function(index){
          $.ajax({
            url: '/index.php/admin/Main/del_item',
            type: "POST",
            data:{"id":id},
            dataType: "json",
            async:true,
            success:function (msg) {
              if(msg == 1){
                //发异步删除数据
                $(obj).parents("tr").remove();
                layer.msg('已删除!',{icon:1,time:1000});
              }
              if(msg == 0){
                //发异步删除数据
                layer.msg('删除失败!',{icon:1,time:1000});
              }
            },
            error:function(msg){
              layer.msg("ajax error: ",{icon:1,time:1000});
            }
          });
        });
    }
```
# 应用安全策略及实现

## 前端检查输入合法性
### 效果图
<img scr="data/img/27.png" width="700px"\>
### 核心代码
```javascript
form.verify({
            name: function(value){
                //alert(/^[a-zA-Z]\w{2,14}$/.test(value));
                if(! /^[a-zA-Z]\w{2,14}$/.test(value)){
                    return '字母开头，可以包含字母、数字、下划线，3-15个字符';
                }
            }
            ,password: function(value){
                if(! /^[a-zA-Z0-9]{6,20}$/.test(value)){
                    return '密码必须6到20位，只能是字母和数字';
                }
            }
        });
```
## 验证码
点击更换验证码，后台先进行验证码校验，通过后再进行后续操作

### 效果图
<img scr="data/img/28.png" width="700px"\>
### 核心代码
```php
public function verify()
    {
        $captcha = new Captcha();
        return $captcha->entry();
    }
```
## token
token实现免登录功能，过一定时间后，token自动失效；也可以通过主页的“安全退出”使token过期。
### 效果图
<img scr="data/img/30.png" width="700px"\>
<img scr="data/img/29.png" width="700px"\>
### 核心代码
```php
public function dologin() {
        //验证密码流程
        if(request()->isPost()){
            $data = input('post.');
            if(!captcha_check($data['verifyCode'])) {
                // 校验失败
                $this->error('验证码不正确');
            }
        }
        $username = $_REQUEST['username'];
        $password = $_REQUEST['password'];
        $data=Db::table('seckill_admin')->where('username',$username)->find();
        if($data['password']==md5($password)){
            //更新token
            $this->set_token($data['id']);
            //更新数据库
            $logindata = array('login_ip'=>request()->ip(),'login_time'=>time());
            $result = Db::table('seckill_admin')->where('id', $data['id'])->setField($logindata);
            $this->success('登录成功', 'main/index');
        }
        else{
            $this->error('登录失败', 'login/index');
        }
    }

    private function set_token($id){
        $key = "pig";
        $time = time();
        $expire = 3600;//一小时后失效
        $data = $key.$id.$time;
        $token = base64_encode($data);
        $update = array('token'=>$token,'expire_time'=>$time+$expire);
        $result = Db::table('seckill_admin')->where('id', $id)->setField($update);
        if($result){
            setcookie('token', $token,time() + 24 * 3600,'/');
            if(isset($_COOKIE['token'])){
                echo 'cookie设置成功';
            }else{
                echo 'cookie设置失败';
            }
            return true;
        }else{
            return false;
        }
    }
```
## 权限验证
### 效果图
<img scr="data/img/31.png" width="700px"\>
### 核心代码
```php
//Common.php
public function __construct() {
        parent::__construct();
        $this->user_name='';
        if (!isset($_COOKIE['token'])) {
            $this->error('请登陆', 'Login/index');
        }else{
            $data = Db::table('seckill_admin')->where('token',$_COOKIE['token'])->find();
            if(!$data||$data['expire_time']<time()){
                $this->error('信息失效，请登录', 'Login/index');
            }
            $this->user_name = $data['username'];
        }

        //权限检查
        if (!$this->_checkAuthor($data['role'])) {
            $this->error('你无权限操作','/index.php/admin/main/index');
        }

    //     记录日志
        $this->_addLog();
    }

    // /**
    //  * 权限检查
    //  */
    private function _checkAuthor($role) {
        //根据role查询对应的权限
        $group = db('seckill_admin_group')->where('name',$role)->find();
        $rules = explode( ",",$group['rules']);
        $m = strtolower(request()->module());
        $c = strtolower(request()->controller());
        $a = strtolower(request()->action());
        $node = db('seckill_rule')->where(['m'=>$m,'c'=>$c,'a'=>$a])->find();
        if($node){
            if(in_array($node['id'], $rules)){
                return true;
            }
            else{
                return false;
            }
        }
        else{
            return false;
        }
        return true;
    }
```
## 按钮灰色
### 效果图
<img scr="data/img/32.png" width="700px"\>
<img scr="data/img/33.png" width="700px"\>

### 核心代码
```javascript
window.setTimeout("YanChi()",1000);
function YanChi()
{  
　　var span = document.getElementById("daojishi");    
　　//改变span里面的值  
　　span.innerText = span.innerText-1;    
　　//判断是否减到了0
 　　if(span.innerText <= 0)
 　　{   
　　　　document.getElementById("btn").removeAttribute("disabled");   
　　　　return;
 　　}  
 　　window.setTimeout("YanChi()",1000);  
}
```
## 后端会检查时间
如果有用户想通过url直接购买秒杀商品，会被后台拦截
### 效果图
<img scr="data/img/34.png" width="700px"\>
### 核心代码
```php
public function buy_sale(){//秒杀的购买单独处理
    $sale_id = $_REQUEST['id'];
    $amount = $_REQUEST['amount'];//不能超过1
    if($amount>1){
        $this->error("限购1件");
        return;
    }
    $product = db("seckill_sale")->where("id",$sale_id)->find();
    if($product){
        //检查时间是否可以购买
        if($product['start_time']>time()){
            $this->error("未开始抢购");
            return;
        }else if($product['end_time']<time()){
            $this->error("抢购已结束");
            return;
        }else{
    
        }
        if($product['amount']>=$amount){//库存够买
            $product2 = db("seckill_item")->where("id",$product['item_id'])->find();
            if($this->create_order($product2['name'],$product['price'],$amount)){
                $new_amount = $product['amount']-$amount;
                
                db("seckill_sale")->where("id",$product['id'])->setField(['amount'=>$new_amount]);//减库存
                
                db("seckill_item")->where("id",$product2['id'])
                		->setField(['amount'=>($product2['amount']-$amount)]);
                $this->success("订单创建成功！",'/index.php/user/main/order_list');
            }else{
                $this->error("订单创建失败！");
            }
        }
    }else{
        $this->error("商品不可购买！");
    }
    return;
    
}
```
# 部署说明
+ 在web文件根目录下git clone https://github.com/MarshaZheng/seckill-system
+ 需安装captcha2.
+ apache/nginx文件根目录修改为public下
+ 导入data下的sql文件, 修改config下的数据库名称和密码
+ tips:
	+ 如果增加秒杀活动的时间选择器打不开，可以尝试最大化页面
	+ 如果登录界面的验证码无法显示，可以尝试输入完整的url：127.0.0.1/index.php/admin/login/index
