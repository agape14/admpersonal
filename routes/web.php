<?php

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use Laravel\Socialite\Facades\Socialite;
use crocodicstudio\crudbooster\helpers\CRUDBooster;
use crocodicstudio\crudbooster\controllers\AdminController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});


Route::get('/login-google', function () {
    return Socialite::driver('google')->redirect();
});
 
Route::get('/google-callback', function () {
    $user = Socialite::driver('google')->user();
    //CRUDBooster::first('cms_users',CRUDBooster::myid())
    //DB::table('cms_users')->where('name', $name)
    $userExists=DB::table('cms_users')->where('id_externo',$user->id)->where('login_externo','google');
    dd($user );
    if($userExists){

        $admcont = new AdminController();
        $myVariable = $admcont->postLogin();
    }else{
        dd($user );
    }
    
    // $user->token
});