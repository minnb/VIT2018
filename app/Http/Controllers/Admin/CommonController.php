<?php
namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Setting;
use DB;
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
        return view('admin.setting.hotline');
    }
    public function getListHotline(){
        return Setting::where('type','HOTLINE')->orderBy('id','DESC')->get();
    }
    public function postHotline(Request $request){
        $setting = new Setting;
        try{
            DB::beginTransaction();
            $setting->type ='HOTLINE';
            $setting->name =$request->name;
            $setting->address ='';
            $setting->phone = $request->phone;
            $setting->email = $request->email;
            $setting->alias = '';
            $setting->sort = 1;
            $setting->status = 1;
            $setting->save();
            DB::commit();
            return "OK";  
        }catch (Exception $e) {
            DB::rollBack();
            return "NOT"; 
        }
    }
    public function getEditHotline($id){
        return Setting::findOrFail($id);
    }
    public function postEditHotline(Request $request, $id){
        $setting = Setting::findOrFail($id);
        try{
            DB::beginTransaction();
            $setting->name =$request->name;
            $setting->phone = $request->phone;
            $setting->email = $request->email;
            $setting->save();
            DB::commit();
            return "OK";  
        }catch (Exception $e) {
            DB::rollBack();
            return "NOT"; 
        }
    }

    public function getDelete($id){
        $hotline = Setting::findOrFail($id);
        $hotline->delete();
        return "OK";
    }

    public function getCompany(){

    }

}