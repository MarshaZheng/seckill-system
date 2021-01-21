<?php


namespace app\user\controller;

use think\Controller;
use think\Request;
use think\Loader;
use think\Db;

class Common extends Controller {

    public function __construct() {
        parent::__construct();
        if (!isset($_COOKIE['token'])) {
            $this->error('请登陆', 'Login/index');
        }else{
            $data = Db::table('seckill_user')->where('token',$_COOKIE['token'])->find();
            if(!$data||$data['expire_time']<time()){
                $this->error('信息失效，请登录', 'Login/index');
            }else{
                $this->user_id = $data['id'];
            }
        }
    }


}