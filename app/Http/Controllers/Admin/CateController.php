<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
class CateController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function getCateProduct()
    {
        $data = Category::getList(1);
        return view('admin.pages.cate_product', compact('data'));
    }

    public function getCateProject()
    {
        $data = Category::getList(2);
        return view('admin.pages.cate_project', compact('data'));
    }

    public function getCateDocument()
    {
        $data = Category::getList(11);
        return view('admin.pages.cate_document', compact('data'));
    }

    public function getCateNew()
    {
        $data = Category::getList(3);
        return view('admin.pages.cate_news', compact('data'));
    }
}
