<?php
namespace app\admin\controller;
use think\Controller;
use think\Loader;
use app\admin\controller\Common;
use think\Db;
// class Main extends Controller {
class Main extends Common{


    public function index()
    {
        return view();
    }
    public function welcome()
    {
        return view();
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
    
    public function upload_img($file){   
        $info = $file->move('static/upload/admin/');
        if($info){        // 成功上传后 获取上传信息        
            // 输出 jpg        
            return  $info->getSaveName();  
        }else{        // 上传失败获取错误信息        
            $this->error('图片上传失败');
        }  
    }
}
