<?php

namespace app\admin\controller;

use think\Controller;
use think\Loader;
use think\Db;
use think\captcha\Captcha;

class Login extends Controller {

    /**
     * 登入
     */
    public function index() {
        if(isset($_COOKIE['token'])){
            $data = Db::table('seckill_admin')->where('token',$_COOKIE['token'])->find();
            if($data&&$data['expire_time']>time()){
                $this->success('尊敬的'.$data['username'].',您已登录!', 'main/index');
            }
        }
        return $this->fetch();
        
    }

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
        //假设用户名密码争取
        
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
}
