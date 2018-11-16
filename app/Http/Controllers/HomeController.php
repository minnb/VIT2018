<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Category;
class HomeController extends Controller
{
    public function index()
    {
        return view('home.layouts.index');
    }
    
    public function getLogin(){
        return view('auth.login');
    }

    public function getProducts(){
        $data = Post::where([
            ['parent', 1],
            ['sttesign', 1]
        ])->paginate(12);

        if(isset($data)){
            return view('home.pages.products', compact('data'));
        }else{
            return view('home.layouts.index');
        }
    }
    
    public function getProductByCate($idd, $name){
        $id = fdecrypt($idd);
        $cate_name = Category::find($id)->name;
        $data = Post::where([
            ['categorieID', $id],
            ['sttesign', 1]
        ])->orderBy('id', 'DESC')->paginate(8);

        if(isset($data)){
            return view('home.pages.product_by_cate', compact('data','id','cate_name'));
        }else{
            return view('home.layouts.index');
        }
    }
    public function getProductSingle($idd, $name){
    	$id = fdecrypt($idd);
    	$data = Post::find($id);
    	$cate_name = Category::find($data->categorieID)->name;
    	$title = $cate_name.' - '.$data->title;
    	if(isset($data)){
    		return view('home.pages.single_product', compact('data','id','title'));
    	}else{
    		return view('home.layouts.index');
    	}
    	
    }
}
