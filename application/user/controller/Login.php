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
    public function logout(){
        setcookie('token', '',time() - 24 * 3600,'/');
        
        $this->success("您已安全退出");
        return;
    }
    public function do_signup()
    {
        $phone=  $_REQUEST['phone'];
        $username = $_REQUEST['username'];
        $password = $_REQUEST['pass'];
        $result = db('seckill_user')->where('username', $username)->select();
        if($result){
            $this->error('用户名已存在');
            return;
        }
        $result = db('seckill_user')->where('phone', $phone)->select();
        if($result){
            $this->error('用户名已存在');
            return;
        }
        $data = array('username'=>$username, 'password'=>md5($password), 'phone'=>$phone);
        $result = db('seckill_user')->insert($data);
        if($result){
            $this->success('注册成功','/index.php/user/login/index');
        }
        else{
            $this->error('注册失败','/index.php/user/login/signup');
        }
        return;
    }
    public function verify()
    {
        $captcha = new Captcha();
        return $captcha->entry();
    }
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
