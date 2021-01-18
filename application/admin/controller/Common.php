<?php


namespace app\admin\controller;

use think\Controller;
use think\Request;
use think\Loader;

class Common extends Controller {

    // // $request=new Request();
    public function __construct() {
        parent::__construct();
    //     // $this->init();
        if (!session('user_id')) {

            $this->error('请登陆', url('/admin/Login/index'));
        }

    //     $this->user_id = session('user_id');
    //     $this->user_name = session('user_name');
    //     //var_dump($this->user_id,$this->user_name);
    //     //权限检查
    //     if (!$this->_checkAuthor($this->user_id)) {
    //         $this->error('你无权限操作');
    //     }

    //     // //记录日志
    //     $this->_addLog();
    }

    // /**
    //  * 权限检查
    //  */
    // private function _checkAuthor($user_id) {
    //     $data=db('admin')->where('id',$user_id)->find();
    //     if(!$data){
    //         $this->error('用户不存在');
    //     }
    //     //根据role查询对应的权限
    //     $group = db('role')->where('name',$data['role'])->find();
    //     $rules = explode( ",",$group['rules']);
    //     $m = strtolower(request()->module());
    //     $c = strtolower(request()->controller());
    //     $a = strtolower(request()->action());
    //     $node = db('node')->where(['m'=>$m,'c'=>$c,'a'=>$a])->find();
    //     if($node){
    //         if(in_array($node['id'], $rules)){
    //             return true;
    //         }
    //         else{
    //             return false;
    //         }
    //     }
    //     else{
    //         return false;
    //     }
    //     return true;
    // }

    // /**
    //  * 记录日志
    //  */
    // private function _addLog() {

    //     $data = array();
    //     // $data['querystring'] = request()->query()?'?'.request()->query():'';
    //     $data['m'] = request()->module();
    //     $data['c'] = request()->controller();
    //     $data['a'] = request()->action();
    //     $data['userid'] = $this->user_id;
    //     $data['username'] = $this->user_name;
    //     $data['ip'] = request()->ip();
    //     $data['time'] = time();
    //     // $data['m'] = "admin";
    //     // $data['c'] = "test";
    //     // $data['a'] = "test";
    //     // $data['userid'] = "1";
    //     // $data['username'] = "test";
    //     // $data['ip'] = "test";
	//     // $data['time'] = time();
    //     $arr = array('Main/index','Log/index','Main2/index');
        
    //         db('log')->insert($data);
        
    // }

}