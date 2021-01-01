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
        echo json_encode(1);
        return;
        // $data=Db::table('admin')->where('username',$username)->find();
  
    }
}
