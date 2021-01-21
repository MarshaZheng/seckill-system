<?php
namespace app\user\controller;
use think\Controller;
use think\Loader;
use app\user\controller\Common;
class Main extends Controller {


    public function index()
    {
        $list = db("seckill_advert")->select();
        $this->assign("list",$list);
        $list2 = db("seckill_item")->where("status",1)->limit(4)->select();
        $this->assign("list2",$list2);
        return view();
    }
    public function welcome()
    {
        $list = db("seckill_advert")->select();
        $this->assign("list",$list);
        return view();
    }
    public function goods()
    {
        return view();
    }



    
}
