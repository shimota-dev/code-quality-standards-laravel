<?php

namespace App\Http\Controllers;

abstract class Controller
{
    public function exampleMethod()
    {
        // 未定義の変数を使用（エラー）
        // $result = $undefinedVariable + 5;

        // 型の不一致（エラー）
        // $string = 'Hello';
        // $number = 42;
        // $result = $string + $number;

        // 存在しないメソッドの呼び出し（エラー）
        // $this->nonExistentMethod();

        // 不適切な戻り値の型（エラー）
        // return 'This should be an array';
    }
}
