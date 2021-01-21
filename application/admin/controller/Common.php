<?php


namespace app\admin\controller;

use think\Controller;
use think\Request;
use think\Loader;
use think\Db;

class Common extends Controller {

    // // $request=new Request();
    public function __construct() {
        parent::__construct();
    //     // $this->init();
        if (!isset($_COOKIE['token'])) {
            $this->error('请登陆', 'Login/index');
        }else{
            $data = Db::table('seckill_admin')->where('token',$_COOKIE['token'])->find();
            if(!$data||$data['expire_time']<time()){
                $this->error('信息失效，请登录', 'Login/index');
            }
        }

    //     $this->user_id = session('user_id');
    //     $this->user_name = session('user_name');
    //     //var_dump($this->user_id,$this->user_name);
        //权限检查
        if (!$this->_checkAuthor($data['role'])) {
            $this->error('你无权限操作','/index.php/admin/main/index');
        }

    //     // //记录日志
        $this->_addLog();
    }

    // /**
    //  * 权限检查
    //  */
    private function _checkAuthor($role) {
        // $data=db('admin')->where('id',$user_id)->find();
        // if(!$data){
        //     $this->error('用户不存在');
        // }
        //根据role查询对应的权限
        $group = db('seckill_admin_group')->where('name',$role)->find();
        $rules = explode( ",",$group['rules']);
        $m = strtolower(request()->module());
        $c = strtolower(request()->controller());
        $a = strtolower(request()->action());
        $node = db('seckill_rule')->where(['m'=>$m,'c'=>$c,'a'=>$a])->find();
        if($node){
            if(in_array($node['id'], $rules)){
                return true;
            }
            else{
                return false;
            }
        }
        else{
            return false;
        }
        return true;
    }

    /**
     * 记录日志
     */
    private function _addLog() {

        $data = array();
        // $data['querystring'] = request()->query()?'?'.request()->query():'';
        $data['m'] = request()->module();
        $data['c'] = request()->controller();
        $data['a'] = request()->action();
        $data['ip'] = request()->ip();
        $data['time'] = time();
        
        if($data['a']){
            db('seckill_log')->insert($data);
        }
        
        
    }

}