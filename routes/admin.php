<?php
Auth::routes();
Route::get('dashboard', ['as'=>'dashboard', 'uses'=>'Admin\AdminController@index']);

Route::group(['prefix'=> 'dashboard'], function(){
		Route::group(['prefix'=> 'cate'], function(){
			Route::get('products/lists', ['as'=>'get.admin.cate.product.list','uses'=>'Admin\CateController@getCateProduct']);
			Route::get('projects/lists', ['as'=>'get.admin.cate.project.list','uses'=>'Admin\CateController@getCateProject']);
			Route::get('documents/lists', ['as'=>'get.admin.cate.document.list','uses'=>'Admin\CateController@getCateDocument']);
			Route::get('news/lists', ['as'=>'get.admin.cate.new.list','uses'=>'Admin\CateController@getCateNew']);
		});
	});

Route::group(['prefix'=> 'dashboard'], function(){
		Route::group(['prefix'=> 'lists'], function(){
			Route::get('products', ['as'=>'get.admin.list.product','uses'=>'Admin\ProductController@getList']);
			Route::get('projects', ['as'=>'get.admin.list.project','uses'=>'Admin\ProjectController@getList']);
			Route::get('documents', ['as'=>'get.admin.list.document','uses'=>'Admin\DocumentController@getList']);
			Route::get('news', ['as'=>'get.admin.list.new','uses'=>'Admin\NewController@getList']);
		});
	});