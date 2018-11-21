<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Post;use Auth;
class DocumentController extends Controller
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
    public function getList()
    {
        $data = Post::getList(11);
        return view('admin.pages.list_document', compact('data'));
    }

    public function getAdd(){
        return view('admin.pages.add_document');
    }
    public function postAdd(Request $request){
        $post = new Post();
        $post->title = $request->name;
        $post->description = $request->description;
        $post->content = '';
        $post->viewed = 0;
        $post->votes = 0;
        $post->parent = Category::find($request->cate_id)->parent;
        $post->type = 0;
        $post->categorieID = $request->cate_id;
        $post->userID = Auth::user()->id;
        $post->sttesign = 1;
        $post->price = 0;
        $post->save();
        return redirect()->route('get.admin.list.document')->with(['flash_message'=>'Tạo mới thành công']);
    }
    public function getEdit($id){
        $post_id = $id;
        $data = Post::find($id);
        return view('admin.pages.edit_document', compact('data', 'post_id'));
    }
    public function postEdit(Request $request, $id){
        $post = Post::findOrFail($id);
        $post->title = $request->name;
        $post->description = $request->description;
        $post->parent = Category::find($request->cate_id)->parent;
        $post->categorieID = $request->cate_id;
        $post->userID = Auth::user()->id;
        $post->save();
        return redirect()->route('get.admin.list.document')->with(['flash_message'=>'Chỉnh sửa thành công']);
    }

    public function getDelete($id){
        $post = Post::findOrFail($id);
        if(isset($post)){
            $post->delete();
        }
        return redirect()->route('get.admin.list.document')->with(['flash_message'=>'Xóa thành công']);   
    }
}