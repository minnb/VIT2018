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
        ])->orderBy('id', 'DESC')->paginate(18);

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

    public function getProject(){
        $data = Post::where([
            ['parent', 2],
            ['sttesign', 1]
        ])->paginate(20);
        if(isset($data)){
            return view('home.pages.projects', compact('data'));
        }else{
            return view('home.layouts.index');
        }
    }

    public function getDocument(){
        $data = Post::where([
            ['parent', 11],
            ['sttesign', 1]
        ])->get()->toArray();
        if(isset($data)){
            return view('home.pages.documents', compact('data'));
        }else{
            return view('home.layouts.index');
        }
    }

    public function getAbout(){
        $a = Post::where('categorieID',16)->get()->toArray();
        $data = $a[0]['content'];
        $title = $a[0]['title'];
        return view('home.pages.about', compact('data', 'title'));
    }

    public function getWarranty(){
        $a = Post::where('categorieID',24)->get()->toArray();
        if($a){
            $data = $a[0]['content'];
            $title = $a[0]['title'];
            return view('home.pages.baohanh', compact('data', 'title'));
        }else{
            return back();
        }
        
    }
    public function getSecurity(){
        $a = Post::where('categorieID',25)->get()->toArray();
         if($a){
           $data =  $a[0]['content'];
           $title = $a[0]['title'];
           return view('home.pages.baomat', compact('data', 'title'));
        }else{
            return back();
        }
    }
}
