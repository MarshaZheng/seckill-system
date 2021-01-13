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
    
    /**
     * 处理登录
     */
    public function dologin() {
        $username = $_REQUEST['username'];
        $password = $_REQUEST['password'];
        $data=Db::table('seckill_user')->where('username',$username)->find();
        if($data['password']==md5($password)){
            session('user_name', $data['username']);
            session('user_id', $data['id']);
            cookie('user_name', $data['username']);
            cookie('user_id', $data['id']);
            $logindata = array('loginip'=>request()->ip(),'logintime'=>time());
            $result = Db::table('seckill_user')->where('username', $username)->setField($logindata);
            if($result !== false){
                echo '数据更新成功！';
            }else{
                echo '没更新任何数据！';
            }
            if($data['role']=="高级管理员"){
                $this->success('登录成功', 'main/index');
            }
            else{
                $this->success('登录成功', 'main2/index');
            }
            $this->success('登录成功', 'main/index');
          


        }
        else{
            $this->error('登录失败', 'login/index');
        }
        //假设用户名密码争取
        
    }
}
