<?php
namespace app\admin\controller;
use think\Controller;
// use app\admin\controller\Common;
// class Main2 extends Controller
class Main2 extends Common
{



    public function index()
    {
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
    public function allocate(){
        return view();
    }
    public function doallocate()
    {
        $stu_id = $_REQUEST['id'];
        $dorm = $_REQUEST['dorm']; 
        $room = $_REQUEST['room'];
        $data=db('student')->where('id',$stu_id)->find();
        if($data==null){
            $this->error('该学号不存在', url('allocate'));
        }else{
            if($data['room']!=0){
                $this->error('该学生已分配宿舍', url('change'));
            }
            else{
                $update = array('dorm'=>$dorm."号楼",'room'=>$room);
                $res = db('student')->where('id', $stu_id)->setField($update);;
                if ($res) {
                    // db('admin_group_access')->where(['uid' => $id])->delete();
                    $this->success('分配宿舍成功！', url('dormlist'));
                } 
                else {
                    $this->error('分配失败！', url('allocate'));
                }
            }
        }
    }

    public function change(){
        return view();
    }
    public function dochange()
    {
        $stu_id = $_REQUEST['id'];
        $dorm = $_REQUEST['dorm']; 
        $room = $_REQUEST['room'];
        $data=db('student')->where('id',$stu_id)->find();
        if($data==null){
            $this->error('该学号不存在', url('change'));
        }else{
            if($data['room']="0"){
                $this->error('该学生未分配宿舍', url('change'));
            }
            else{
                $update = array('dorm'=>$dorm."号楼",'room'=>$room);
                $res = db('student')->where('id', $stu_id)->setField($update);;
                if ($res) {
                    // db('admin_group_access')->where(['uid' => $id])->delete();
                    $this->success('更换宿舍成功！', url('studentlist'));
                } 
                else {
                    $this->error('分配失败！', url('allocate'));
                }
            }
        }
    }

    public function leave(){
        return view();
    }
    public function doleave()
    {
        $stu_id = $_REQUEST['id'];
        $data=db('student')->where('id',$stu_id)->find();
        if($data==null){
            $this->error('该学号不存在', url('change'));
        }else{
            if($data['room']=0){
                $this->error('该学生未分配宿舍', url('change'));
            }
            else{
                $update = array('dorm'=>0,'room'=>0);
                $res = db('student')->where('id', $stu_id)->setField($update);;
                if ($res) {
                    // db('admin_group_access')->where(['uid' => $id])->delete();
                    $this->success('退宿成功！', url('index'));
                } 
                else {
                    $this->error('退宿失败！', url('change'));
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
        $info = db('admin')->where('id',session('user_id'))->select();
        //var_dump($lists);
        $this->assign("info", $info);
        return $this->fetch();
        
    }
    
}
