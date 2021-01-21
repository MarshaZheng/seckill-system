<?php
namespace app\user\controller;
use think\Controller;
use think\Loader;
use app\user\controller\Common;
use think\cache\driver\Redis;
class Main extends Common{


    public function index()
    {

        $list = db("seckill_advert")->select();
        $this->assign("list",$list);
        $list2 = db("seckill_item")->where("status",1)->limit(4)->select();
        $this->assign("list2",$list2);
        $list3 = db("seckill_sale")->where("status",1)->select();
        $this->assign("list3",$list3);
        return view();
    }
    public function shop()
    {
        $list = db("seckill_item")->where("status",1)->select();
        $this->assign("list",$list);
        return view();
    }
    public function order_list()
    {
        $list = db("seckill_order")->where("user_id",$this->user_id)->select();
        $this->assign("list",$list);
        return view();
    }
    public function product_details()
    {
        $name=$_REQUEST['name'];
        $product = db("seckill_item")->where("name",$name)->find();
        $this->assign("product",$product);
        return view();
    }

    public function sale_details()
    {
        $sale_id=$_REQUEST['id'];
        $sale = db("seckill_sale")->where("id",$sale_id)->find();
        $product = db("seckill_item")->where("id",$sale['item_id'])->find();
        $cur_time = time();
        $this->assign("product",$product);
        $this->assign("sale",$sale);
        $this->assign("cur_time",$cur_time);
        return view();
    }
    public function test(){
        $redis = new Redis();
        $redis->connect('127.0.0.1', 6379);
        echo "Connection to server successfully";
                //查看服务是否运行
        echo "Server is running: " . $redis->ping();
    }
    public function buy_sale(){//秒杀的购买单独处理
        $sale_id = $_REQUEST['id'];
        $amount = $_REQUEST['amount'];//不能超过1
        if($amount>1){
            $this->error("限购1件");
            return;
        }
        $product = db("seckill_sale")->where("id",$sale_id)->find();
        if($product){
            //检查时间是否可以购买
            if($product['start_time']>time()){
                $this->error("未开始抢购");
                return;
            }else if($product['end_time']<time()){
                $this->error("抢购已结束");
                return;
            }else{
    
            }
            if($product['amount']>=$amount){//库存够买
                $product2 = db("seckill_item")->where("id",$product['item_id'])->find();
                if($this->create_order($product2['name'],$product['price'],$amount)){
                    $new_amount = $product['amount']-$amount;
                    
                    db("seckill_sale")->where("id",$product['id'])->setField(['amount'=>$new_amount]);//减库存
                    
                    db("seckill_item")->where("id",$product2['id'])->setField(['amount'=>($product2['amount']-$amount)]);
                    $this->success("订单创建成功！",'/index.php/user/main/order_list');
                }else{
                    $this->error("订单创建失败！");
                }
            }
        }else{
            $this->error("商品不可购买！");
        }
        return;
        
    }
    public function buy_product(){
        $item_id = $_REQUEST['id'];
        $amount = $_REQUEST['amount'];
        $product = db("seckill_item")->where(["id"=>$item_id,'status'=>1])->find();
        if($product){
            if($product['amount']>=$amount){//库存够买
                if($this->create_order($product['name'],$product['price'],$amount)){
                    $new_amount = $product['amount']-$amount;
                    db("seckill_item")->where("id",$item_id)->setField(['amount'=>$new_amount]);//减库存
                    $this->success("订单创建成功！",'/index.php/user/main/order_list');
                }else{
                    $this->error("订单创建失败！");
                }
            }
        }else{
            $this->error("商品不可购买！");
        }
        return;
    }

    private function create_order($item,$price,$amount){
        $time = date(time());
        $serial = "SP".substr(md5($this->user_id.$time),10);
        $total_price = $price*$amount;
        $data = array('serial_number'=>$serial, 'user_id'=>$this->user_id, 'item'=>$item,'price'=>$price, 
            'amount'=>$amount,'total_price'=>$total_price, 'submit_time'=>$time,'status'=>0);
        $result = db('seckill_order')->insert($data);
        if($result){
             return true;
        }
        return false;
       
    }

    
}
