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
Route::get('/du-an',array('as'=>'get.project.all','uses'=>'HomeController@getProject'));
Route::get('/bao-gia-catalog-san-pham',array('as'=>'get.document.all','uses'=>'HomeController@getDocument'));
Route::get('/gioi-thieu-vitduct',array('as'=>'get.about','uses'=>'HomeController@getAbout'));

Route::get('/{id}/{title}',array('as'=>'get.product.cate','uses'=>'HomeController@getProductByCate'));
Route::get('/san-pham/{id}/{title}',['as'=>'get.product.single','uses'=>'HomeController@getProductSingle']);


Route::get('/chinh-sach-bao-hanh-doi-tra',array('as'=>'get.baohanh','uses'=>'HomeController@getWarranty'));
Route::get('/chinh-sach-bao-mat',array('as'=>'get.baomat','uses'=>'HomeController@getSecurity'));

