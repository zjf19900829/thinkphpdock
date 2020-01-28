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
        phpinfo();
    }

    public function Goods(){
        $user = Db('user')->select();
        return json($user);

    }

    public function RedisUse(){
        Cache::store('redis')->set('key1','123456789');
        $sas = Cache::store('redis')->get('key1');
        return $sas;


    }
}
