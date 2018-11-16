<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Setting;
class CommonController extends Controller
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
    public function getHotline(){
        $data = Setting::where('type','hotline')->orderBy('sort')->get()->toArray();
        return view('admin.setting.hotline', compact('data'));
    }

    public function getCompany(){
        
    }

}