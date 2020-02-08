<?php
namespace app\index\controller;
use think\Cache;
class Index
{
    public function index()
    {
        phpinfo();
    }

    public function Test(){
        echo '<pre/>';
        print_r(111111);
        echo '<pre/>';
        echo '<pre>';
        print_r('asdf');
        echo '<pre/>';
        echo '<pre>';
        print_r('pspsp');
        echo '<pre/>';

        phpinfo();
    }

    public function Goods(){
        $user = Db('user')->select();
        return json($user);

    }

    public function RedisUse(){
        Cache::store('redis')->set('key2','123456789');
        $sas = Cache::store('redis')->get('key1');
        return $sas;

    }


    //测试从服务器
    public function testMysql(){
        $rs = Db('user')->insert(['name'=>'lsk']);
        return $rs;


    }
}
