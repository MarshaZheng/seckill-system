<?php

namespace app\user\controller;

use think\Controller;
use think\Loader;
use think\Db;

class Login extends Controller {

    /**
     * 登入
     */
    public function index() {

            return $this->fetch();
        
    }
    public function signup() {

        return $this->fetch();
    
    }
    public function test() {

        return $this->fetch();
    
    }
    /**
     * 处理登录
     */
    public function verify()
    {
        $captcha = new Captcha();
        return $captcha->entry();
    }
    /**
     * 处理登录
     */
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
        $data=Db::table('seckill_user')->where('username',$username)->find();
        if($data['password']==md5($password)){
            //更新token
            $this->set_token($data['id']);
            //更新数据库
            $logindata = array('login_ip'=>request()->ip(),'login_time'=>time());
            $result = Db::table('seckill_user')->where('id', $data['id'])->setField($logindata);
            $this->success('登录成功', 'main/index');
          

        }
        else{
            $this->error('登录失败', 'login/index');
        }
        //假设用户名密码争取
        
    }
 
    public function check(){
        //获得来自 URL 的 q 参数
        $q=$_GET["q"];
        // 如果未找到提示，则把输出设置为 "no suggestion"
        // 否则设置为正确的值
        if ($q == "test")
        {
        $response="用户名已被注册";
        }
        else
        {
        $response="用户名可用";
        }

        //输出响应
        echo $response;
    }
    private function set_token($id){
        $key = "secret";
        $time = time();
        $expire = 3600;//一小时后失效
        $data = $key.$id.$time;
        $token = base64_encode($data);
        $update = array('token'=>$token,'expire_time'=>$time+$expire);
        $result = Db::table('seckill_user')->where('id', $id)->setField($update);
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
}
