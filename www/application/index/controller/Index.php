<?php
namespace app\index\controller;

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
        return $user;

    }
}
