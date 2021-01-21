<?php
namespace app\admin\controller;
use think\Controller;
use think\Loader;
use app\admin\controller\Common;
use think\Db;


class Main extends Common{


    public function index()
    {
        
        return view();
    }
    public function welcome()
    {
        $item_amount = db('seckill_item')->count();
        $order_amount = db('seckill_order')->count();
        $user_amount = db('seckill_user')->count();
        $sale_amount = db('seckill_sale')->count();
        $admin_amount = db('seckill_admin')->count();
        $this->assign("username",$this->user_name);
        $this->assign("item_amount",$item_amount);
        $this->assign("order_amount",$order_amount);
        $this->assign("user_amount",$user_amount);
        $this->assign("sale_amount",$sale_amount);
        $this->assign("admin_amount",$admin_amount);
        return view();
    }
    public function add_rule()
    {
        return view();
    }
    public function do_add_rule()
    {
        $name =  $_REQUEST['rule'];
        $m = $_REQUEST['m'];
        $c = $_REQUEST['c'];
        $a = $_REQUEST['a'];
        $status = $_REQUEST['status'];
        $result = db('seckill_rule')->where(['m'=>$m,'c'=>$c,'a'=>$a])->find();
        if($result){
            $this->error('规则已存在');
            return;
        }
        $data = array('name'=>$name, 'm'=>$m, 'c'=>$c, 'a'=>$a,'status'=>$status,'updatetime'=>time());
        $result = db('seckill_rule')->insert($data);
        if($result){
            $this->success('规则添加成功');
        }
        else{
            $this->error('规则添加失败');
        }
        return;
    }
    public function sale_list()
    {
        $list = db("seckill_sale")->select();
        $this->assign("list",$list);
        return view();
    }
    public function add_sale()
    {
        $list = db("seckill_item")->where('status',1)->select();
        $this->assign("list",$list);
        return view();
    }
    public function do_add_sale()
    {
        $item_id =  $_REQUEST['item_id'];
        $price = $_REQUEST['price'];
        $old_price = $_REQUEST['old_price'];
        $amount = $_REQUEST['amount'];
        $start_time = strtotime($_REQUEST['start_time']);
        $end_time = strtotime($_REQUEST['end_time']);
        $status = $_REQUEST['status'];
        $result = db('seckill_sale')->where(['item_id'=>$item_id])->select();
        if($result){
            $this->error('该商品的促销已存在');
            return;
        }
        $item = db('seckill_item')->where(['id'=>$item_id])->find();
        $data = array('item_id'=>$item_id, 'price'=>$price, 'old_price'=>$old_price, 'amount'=>$amount,'start_time'=>$start_time,
                    'end_time'=>$end_time,'image'=>$item['image'],'status'=>$status);
        $result = db('seckill_sale')->insert($data);
        if($result){
            $result = Db::table('seckill_item')->where('id', $item_id)->setField(['status'=>0]);
            $this->success('活动添加成功');
        }
        else{
            $this->error('活动添加失败');
        }
        return;
    }
    public function add_admin()
    {
        $list = db("seckill_admin_group")->select();
        $this->assign("list",$list);
        return view();
    }
    public function log()
    {
        $number = db("seckill_log")->count();
        $list = db("seckill_log")->where('id','>',$number-20)->select();
	
        $this->assign('list', $list);
        return $this->fetch();
    }
    public function do_add_admin()
    {
        $role =  $_REQUEST['role'];
        $username = $_REQUEST['username'];
        $password = $_REQUEST['pass'];
        $status = $_REQUEST['status'];
        $result = db('seckill_admin')->where('username', $username)->select();
        if($result){
            $this->error('用户名已存在');
            return;
        }
        $data = array('username'=>$username, 'password'=>md5($password), 'role'=>$role);
        $result = db('seckill_admin')->insert($data);
        if($result){
            $this->success('管理员添加成功');
        }
        else{
            $this->error('管理员添加失败');
        }
        return;
    }
    public function del_order()
    {
        $id = $_REQUEST['id'];
        $res = db('seckill_order')->where('id', $id)->delete();
        if ($res) {
            echo json_encode(1);
        } else {
            echo json_encode(0);
        }
        return;
    }
    public function del_sale()
    {
        $id = $_REQUEST['id'];
        $res = db('seckill_sale')->where('id', $id)->delete();
        if ($res) {
            echo json_encode(1);
        } else {
            echo json_encode(0);
        }
        return;
    }
    public function add_role()
    {
        return view();
    }
    public function do_add_role()
    {
        $role =  $_REQUEST['rolename'];
        $desc = $_REQUEST['desc'];
        $rules = $_REQUEST['rules'];
        $result = db('seckill_admin_group')->where('name', $role)->select();
        if($result){
            $this->error('角色名已存在');
            return;
        }
        $data = array('name'=>$role, 'description'=>$desc, 'rules'=>$rules, 'update_time'=>time());
        $result = db('seckill_admin_group')->insert($data);
        if($result){
            $this->success('角色添加成功');
        }
        else{
            $this->error('角色添加失败');
        }
        return;
    }
    public function del_role()
    {
        $id = $_REQUEST['id'];
        $res = db('seckill_admin_group')->where('id', $id)->delete();
        if ($res) {
            echo json_encode(1);
        } else {
            echo json_encode(0);
        }
        return;
    }
    public function role_list()
    {
        $list = db("seckill_admin_group")->select();
        $this->assign("list",$list);
        return view();
    }
    public function admin_list()
    {
        $list = db("seckill_admin")->select();
        $this->assign("list",$list);
        return view();
    }
    public function rule_list()
    {
        $list = db("seckill_rule")->select();
        $this->assign("list",$list);
        return view();
    }
    public function advert_place_list()
    {
        $list = db("seckill_advert_place")->select();
        $this->assign("list",$list);
        return view();
    }
    public function add_advert_place()
    {
        return view();
    }
    // public function do_add_advert_place()
    // {
    //     $place =  $_REQUEST['place'];
    //     $status = $_REQUEST['status'];
    //     $data = array('place'=>$place, 'status'=>$status);
    //     $result = db('seckill_advert_place')->insert($data);
    //     if($result){
    //         $this->success('添加成功');
    //     }
    //     else{
    //         $this->error('添加失败');
    //     }
    //     return;
    // }
    public function advert_list()
    {
        $list = db("seckill_advert")->select();
        $this->assign("list",$list);
        return view();
    }
    public function add_advert()
    {
        $list1 = db("seckill_advert_place")->select();
        $this->assign("list1",$list1);
        $list2 = db("seckill_item_brand")->select();
        $this->assign("list2",$list2);
        return view();
    }
    public function do_add_advert()
    {
        $brand =  $_REQUEST['brand'];
        $place =  $_REQUEST['place'];
        $desc =  $_REQUEST['desc'];
        $image = $this->upload_img(request()->file('image'));
        $status = $_REQUEST['status'];
        $data = array('brand'=>$brand,'place'=>$place,'description'=>$desc, 'image'=>$image, 'status'=>$status);
        $result = db('seckill_advert')->insert($data);
        if($result){
            $this->success('添加成功');
        }
        else{
            $this->error('添加失败');
        }
        return;
    }
    public function del_advert()
    {
        $id = $_REQUEST['id'];
        $res = db('seckill_advert')->where('id', $id)->delete();
        if ($res) {
            echo json_encode(1);
        } else {
            echo json_encode(0);
        }
        return;
    }
    public function order_list()
    {
        $list = db("seckill_order")->select();
        $this->assign("list",$list);
        return view();
    }
    public function item_list()
    {
        $list = db("seckill_item")->select();
        $this->assign("list",$list);
        return view();
    }
    public function item_type_list()
    {
        $list = db("seckill_item_type")->select();
        $this->assign("list",$list);
        return view();
    }
    public function add_item_type()
    {
        return view();
    }
    public function do_add_item_type()
    {
        $name =  $_REQUEST['name'];
        $data = array('name'=>$name);
        $result = db('seckill_item_type')->insert($data);
        if($result){
            $this->success('添加成功');
        }
        else{
            $this->error('添加失败');
        }
        return view();
    }
    public function del_item_brand()
    {
        $id = $_REQUEST['id'];
        $res = db('seckill_item_brand')->where('id', $id)->delete();
        if ($res) {
            echo json_encode(1);
        } else {
            echo json_encode(0);
        }
        return;
    }
    public function del_item_type()
    {
        $id = $_REQUEST['id'];
        $res = db('seckill_item_type')->where('id', $id)->delete();
        if ($res) {
            echo json_encode(1);
        } else {
            echo json_encode(0);
        }
        return;
    }
    public function add_item()
    {
        $list1 = db("seckill_item_type")->select();
        $this->assign("list1",$list1);
        $list2 = db("seckill_item_brand")->select();
        $this->assign("list2",$list2);
        return view();
    }
    public function do_add_item()
    {
        $name =  $_REQUEST['name'];
        $brand = $_REQUEST['brand'];
        $status = $_REQUEST['status'];
        $type =  $_REQUEST['type'];
        $desc =  $_REQUEST['desc'];
        $price = $_REQUEST['price'];
        $amount = $_REQUEST['amount'];
        $unit = $_REQUEST['unit'];
        $image = $this->upload_img(request()->file('image'));
        $data = array('name'=>$name,'brand'=>$brand,'status'=>$status,
                    'type'=>$type,'description'=>$desc, 'image'=>$image,
                    'price'=>$price,'amount'=>$amount,'unit'=>$unit);
        $result = db('seckill_item')->insert($data);
        if($result){
            $this->success('添加成功');
        }
        else{
            $this->error('添加失败');
        }
    }
    public function item_brand_list()
    {
        $list = db("seckill_item_brand")->select();
        $this->assign("list",$list);
        return view();
    }
    public function add_item_brand()
    {
        return view();
    }
    public function do_add_item_brand()
    {
        $name =  $_REQUEST['name'];
        $type =  $_REQUEST['type'];
        $desc =  $_REQUEST['desc'];
        $image = $this->upload_img(request()->file('image'));
        $data = array('name'=>$name,'type'=>$type,'description'=>$desc, 'image'=>$image);
        $result = db('seckill_item_brand')->insert($data);
        if($result){
            $this->success('添加成功');
        }
        else{
            $this->error('添加失败');
        }
        return;
    }
    
    private function upload_img($file){   
        $info = $file->move('static/upload/admin/');
        if($info){        // 成功上传后 获取上传信息        
            // 输出 jpg        
            return  $info->getSaveName();  
        }else{        // 上传失败获取错误信息        
            $this->error('图片上传失败');
        }  
    }
}
