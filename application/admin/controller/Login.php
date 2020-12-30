<?php

namespace app\admin\controller;

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
        //验证密码流程
        
  
        $username = $_REQUEST['username'];
        $password = $_REQUEST['password'];
        $data=Db::table('admin')->where('username',$username)->find();
        if($data['password']==md5($password)){
            session('user_name', $data['username']);
            session('user_id', $data['id']);
            cookie('user_name', $data['username']);
            cookie('user_id', $data['id']);
            //记录登录信息
            //Loader::model('Admin')->editInfo(1, $info['id']);
            $logindata = array('loginip'=>request()->ip(),'logintime'=>time());
            $result = Db::table('admin')->where('username', $username)->setField($logindata);
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
            
            // //记录用户登陆时间和ip
            // $logindata = array('loginip'=>'123.1234.1234.123');
            // // $result = Db::table('crm_user')->where('username', $username)->setField('loginip','123.123.123123');




        }
        else{
            $this->error('登录失败', 'login/index');
        }
        //假设用户名密码争取
        
    }

    /**
     * 登出
     */
    public function logout() {
        session('user_name', null);
        session('user_id', null);
        $this->success('退出成功', '/index.php/admin/Login/index');
    }

    public function test(){
        echo 'test';
    }

}
