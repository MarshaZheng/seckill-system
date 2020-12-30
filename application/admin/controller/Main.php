<?php
namespace app\admin\controller;
use think\Controller;
use think\Loader;
use app\admin\controller\Common;
// class Main extends Controller {
class Main extends Common{


    public function index()
    {
        $list = db("admin")->select();
        $this->assign("list",$list);
        return view();
    }

    public function adminlist()
    {
        $list = db("admin")->select();
        $this->assign("list",$list);
        return view();
    }
    public function studentlist()
    {
        $list = db("student")->select();
        $this->assign("list",$list);
        return view();
    }
    public function dormlist()
    {
        $list = db("dorm")->select();
        $this->assign("list",$list);
        return view();
    }
    public function roomlist()
    {
        $dorm = $_REQUEST['dorm'];
        $list = db("room")->where('dorm',$dorm)->select();
        // if(!$list){
        //     $this->error('该宿舍楼没有房间',url('dormlist'));
        // }
        $this->assign("list",$list);
        return view();
    }
    // public function member_edit()
    // {
    //     $data=Db::table('crm_user')->where('username',$username)->find();
    //     $update = array('loginip'=>$_SERVER["REMOTE_ADDR"],'logintime'=>time());
    //     $result = Db::table('crm_user')->where('username', $username)->setField($update);
    // }
    public function doadminadd()
    {
        $username = $_REQUEST['username'];
        $realname = $_REQUEST['realname'];
        $role = $_REQUEST['role'];
        $data=db('admin')->where('username',$username)->find();
        if($data==null){
            $data = array('username'=>$username,'password'=>md5(123456),'realname'=>$realname ,'role'=>$role);
            $res = db('admin')->insert($data);
            if ($res) {
                $this->success('操作成功', url('adminlist'));
            } else {
                $this->error('操作失败');
            }
        }else{
            $this->error('用户名已存在，请重试', url('add'));
        }
        
        return;
    }
    public function adminadd()
    {

        return view();
    }
    public function studentadd()
    {
        
        
        return view();
    }
    public function dostudentadd(){
        // $this->success('dostudent_add操作成功', url('studentlist'));
        $id = $_REQUEST['id'];
        $username = $_REQUEST['username']; 
        $gender = $_REQUEST['gender'];
        $data=db('student')->where('id',$id)->find();
        if($data==null){
            $data = array('id'=>$id,'username'=>$username,'gender'=>$gender);
            $res = db('student')->insert($data);
            if ($res) {
                $this->success('操作成功', url('studentlist'));
            } else {
                $this->error('操作失败', url('studentadd'));
            }
        }else{
            $this->error('学号已存在', url('studentadd'));
        }
    }
    public function admin_del() {
        $id = $_REQUEST['id'];
        $res = db('admin')->where(['id' => $id])->delete();
        if ($res) {
            // db('admin_group_access')->where(['uid' => $id])->delete();
            echo json_encode(1);
        } else {
            echo json_encode(0);
        }

    }
    public function admin_delall(){
        
        $res = db('admin')->where(1)->delete();
        if ($res) {
            
            $this->success('操作成功', url('adminlist'));
        } else {
            $this->error('操作失败');
        }

    }
    public function student_del() {
        //$this->success('操作成功', url('studentlist'));
        $id = $_REQUEST['id'];
        $res = db('student')->where(['id' => $id])->delete();
        if ($res) {
            // db('admin_group_access')->where(['uid' => $id])->delete();
            echo json_encode(1);
        } else {
            echo json_encode(0);
        }

    }
    public function dormadd(){
        return view();
    }
    public function roomadd(){
        return view();
    }
    public function bedchange(){
        return view();
    }
    public function dodormadd() {
        $name = $_REQUEST['name'];
        $floor = $_REQUEST['floor'];
        $data=db('dorm')->where('name',$name)->find();
        if($data==null){
            $data = array('name'=>$name.'号楼','floor'=>$floor);
            $res = db('dorm')->insert($data);
            if ($res) {
                // db('admin_group_access')->where(['uid' => $id])->delete();
                $this->success('操作成功', url('dormlist'));
            } else {
                $this->error('操作失败', url('dormlist'));
            }
        }else{
            $this->error('宿舍楼已存在，请重试', url('dormadd'));
        }
        

    }
    public function doroomadd() {
        $id = $_REQUEST['id'];
        $dorm = $_REQUEST['dorm'];
        $floor = $_REQUEST['floor'];
        $totalbed = $_REQUEST['totalbed'];
        $gender = $_REQUEST['gender'];
        $data=db('room')->where('id',$id)->find();
        if($data==null){
            $data=db('dorm')->where('name',$dorm."号楼")->find();
            if($data==null){
                $this->error('宿舍楼不存在，请重试', url('roomadd'));
            }
            else{
                if($data['floor']<$floor){
                    $this->error('楼层不存在，请重试', url('roomadd'));
                }
                else{
                    $data = array('id'=>$id,'dorm'=>$dorm."号楼",'floor'=>$floor,'totalbed'=>$totalbed,'emptybed'=>$totalbed,'gender'=>$gender);
                    $res = db('room')->insert($data);
                    if ($res) {
                        $data = db('dorm')->where('name',$dorm)->find();
                        $update = array('totalroom'=>($data['totalroom']+1),'emptyroom'=>($data['emptyroom']+1));
                        $res=db('dorm')->where('name', $dorm."号楼")->setField($update);
                        $this->success('操作成功', url('dormlist'));
                    } else {
                        $this->error('操作失败', url('roomadd'));
                    }
                }
                
            }
            
        }else{
            $this->error('房间已存在，请重试', url('roomadd'));
        }
        

    }
    public function dobedchange() {
        $id = $_REQUEST['room'];
        $totalbed = $_REQUEST['totalbed'];
        $emptybed = $_REQUEST['emptybed'];
        
        $data=db('room')->where('id',$room)->find();
        if($data==null){
            $data=db('dorm')->where('name',$dorm."号楼")->find();
            if($data==null){
                $this->error('房间不存在，请重试', url('roomlist'));
            }
            else{
                
                    $data = array('emptybed'=>$emptybed,'totalbed'=>$totalbed);
                    $res = db('room')->where('id',$room)->setField($data);
                    if ($res) {
                        
                        $this->success('操作成功', url('roomlist'));
                    } else {
                        $this->error('操作失败', url('roomadd'));
                    }
            }
                
            
            
        }
        
    }

    public function changepwd(){
        return view();
    }
    public function dochangepwd(){
        $oldpassword = $_REQUEST['oldpassword'];
        $password = $_REQUEST['password'];
        $repassword = $_REQUEST['repassword'];
        $id = session('user_id');
        $data = db('admin')->where('id',$id)->find();
        if(md5($oldpassword)==$data['password']){
            if($password==$repassword){
                $update = array('password'=>md5($password));
                $res=db('admin')->where('id', $id)->setField($update);
                if($res){
                    $this->success('操作成功', url('index'));
                }
            }
        }
    }
    public function info() {
        $info = db('admin')->where('username',session('user_name'))->select();
        if($info){
            $this->assign("info", $info);
            return view();
        }
        else{
            $this->error('失败了····', url('index'));
        }
        
    }
    public function dorm_del() {
        $name = $_REQUEST['name'];
        $res = db('dorm')->where('name',$name)->delete();
        if ($res) {
            //删除所有属于这栋楼的房间
            $res = db('room')->where('dorm',$name)->delete();
            if ($res) {
                //删除所有属于这栋楼的房间
                
                echo json_encode(1);
            } else {
                echo json_encode(0);
            }
        } else {
            echo json_encode(0);
        }

    }
    public function room_del() {
        $id = $_REQUEST['id'];
        $data = db('room')->where('id',$id)->select();
        $res = db('room')->where('id',$id)->delete();
        if ($res) {
            //对应楼的房间数要减一
            $dormdata = db('dorm')->where('name',$data['dorm'])->select();
            $update = array('totalroom'=>($dormdata['totalroom']-1),'emptyroom'=>($dormdata['emptyroom']-1));
            $res = db('dorm')->where('name',$data['dorm'])->setField($update);
            if ($res) {
                echo json_encode(1);
            } else {
                echo json_encode(0);
            }
        } else {
            echo json_encode(0);
        }

    }
}
