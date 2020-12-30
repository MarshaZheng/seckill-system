<?php

namespace app\admin\controller;
use think\Controller;
class Log extends Controller {
    public function index() {
        $where = array();
        $list = db("log")->where($where)->limit(20)->select();
	
        $this->assign('list', $list);
        return $this->fetch();
    }


}
?>