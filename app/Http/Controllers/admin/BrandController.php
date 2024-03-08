<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\Brand;
class BrandController extends Controller
{
    public function index(Request $request) {
        $brands = Brand::latest('id');

        if (!empty($request->get('keyword')))
        {
            $brands = $brands->where('name','like','%'.$request->get('keyword').'%');
        }
        $brands = $brands->paginate(10);
        return view('admin.brands.list',compact('brands'));

    }


    public function create() {
        return view('admin.brands.create');
    }

    public function store(Request $request) {
        $validator = Validator::make($request->all(),[
            'name' => 'required',
            'slug' => 'required|unique:brands',
        ]);

        if ($validator->passes()) {
            $brand = new Brand();
            $brand->name = $request->name;
            $brand->slug = $request->slug;
            $brand->status = $request->status; 
            $brand->save();
            
            $message = 'Brand added successfully.';
            session()->flash('success', $message);
            return response()->json([
                'status' => true,
                'message' => $message
            ]);  
        } else {
            return response()->json([
                'status' => false,
                'errors' => $validator->errors()

            ]);
        }

    }

    public function edit($id, Request $request)
    {
        $brand = Brand::find($id);

        if (empty($brand)){
            $request->session()->flash('error','Record Not Found');
            return redirect()->route('brands.index');
        }
        $data['brand'] = $brand;
        return view('admin.brands.edit',$data);
    }

    public function update($id, Request $request) {
        $brand = Brand::find($id);
        
        if(empty($brand)) {
            $request->session()->flash('error','Record Not Found');
            return response()->json([
                'status' => false,
                'notFound' => true
            ]);
        } 

         $validator = Validator::make($request->all(),[
            'name' => 'required',
            'slug' =>'required|unique:brands,slug,'.$brand->id.',id',
        ]);

     if ($validator->passes()) {

            $brand->name = $request->name;
            $brand->slug = $request->slug;
            $brand->status = $request->status;
            $brand->save();

            $message = 'Brand updated successfully.';
            session()->flash('success', $message);
            return response()->json([
                'status' => true,
                'message' => $message
            ]); 

     }else {
            return response([
                'status' =>false,
                'errors' =>$validator->errors()
            ]);
          }     
    }
    public function destroy(Request $request, $id) {
        $brand = Brand::find($id);

        if($brand == null) {

        session()->flash('error','Record Not Found');
        return response()->json([
            'status' => true
        ]);
        }
        $brand->delete();
        session()->flash('success','Brand deleted successfully.');
        return response()->json([
            'status' => true
        ]);
    }
}