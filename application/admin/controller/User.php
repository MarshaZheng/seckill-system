<?php



namespace app\admin\controller;

use think\Request;
use think\Db;

class User extends Controller {
// class User extends Common {

    /**
     * 主页面
     */
    public function list() {
        $lists = db('user')->select();
        //var_dump($lists);
        $this->assign("lists", $lists);
        return $this->fetch();
        
    }
    public function info() {
        $info = db('admin')->where('id',session('user_id'))->find();
        //var_dump($lists);
        $this->assign("info", $info);
        return $this->fetch();
        
    }

}
