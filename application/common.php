<?php
// 应用公共文件
defined('ADMIN_STATUS') || define('ADMIN_STATUS', [0 => '停封', 1 => '正常']); //管理员状态
/**
 * 统一返回信息
 * @param $status
 * @param $data
 * @param $msg
 * @return array
 */
function msg($status, $data = '', $msg = '')
{
    return compact('status', 'data', 'msg');
}

/**
 * md5加密
 * @param $str
 * @return string
 */
function newMd5($str)
{
    return md5('masterjoy//.' . $str);
}

/**
 * 获取树结构
 * @param $arr
 * @param $index
 * @return array
 */
function getTree($arr, $index)
{
    $tree = [];
    foreach ($arr as $k => $v) {
        if ($v[$index] != 0) {
            $arr[$v[$index]]['children'][] = &$arr[$k];
        }else{
            $tree[] = &$arr[$k];
        }
    }
    return $tree;
}

function encode($string = '', $skey = 'yourkey') {
    $strArr = str_split(base64_encode($string));
    $strCount = count($strArr);
    foreach (str_split($skey) as $key => $value)
     $key < $strCount && $strArr[$key].=$value;
    return str_replace(array('=', '+', '/'), array('O0O0O', 'o000o', 'oo00o'), join('', $strArr));
   }
   /**
    * 简单对称加密算法之解密
    * @param String $string 需要解密的字串
    * @param String $skey 解密KEY
    */
   function decode($string = '', $skey = 'yourkey') {
    $strArr = str_split(str_replace(array('O0O0O', 'o000o', 'oo00o'), array('=', '+', '/'), $string), 2);
    $strCount = count($strArr);
    foreach (str_split($skey) as $key => $value)
     $key <= $strCount && $strArr[$key][1] === $value && $strArr[$key] = $strArr[$key][0];
    return base64_decode(join('', $strArr));
   }