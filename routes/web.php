<?php

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
include('admin.php');
Route::get('/',['as'=>'index', 'uses'=>'HomeController@index']);
Route::get('/san-pham',array('as'=>'get.product.all','uses'=>'HomeController@getProducts'));
Route::get('/{id}/{title}',array('as'=>'get.product.cate','uses'=>'HomeController@getProductByCate'));
Route::get('/san-pham/{id}/{title}',['as'=>'get.product.single','uses'=>'HomeController@getProductSingle']);

