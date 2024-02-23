<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\tempImage;
use Image;
class TempImagesController extends Controller
{
    // public function create(Request $request){ 

    //     if (!empty($image)){
    //         $image = $request->image;
    //         $ext = $image->getClientOriginalExtension();
    //         $newName = time().'.'.$ext;


    //         $tempImage = new TempImage();
    //         $tempImage->name = $newName;
    //         $tempImage->save();

    //         $image->move(public_path().'/temp',$newName);


    //         //generate thumbnail
    //         $sourcePath = public_path().'/temp/'.$newName;
    //         $destPath = public_path().'/temp/thumb/'.$newName;
    //         $image = Image::make($sourcePath);
    //         $image->fit(300,275);
    //         $image->save($destPath);



    //         return response()->json([
    //             'status' => true,
    //             'image_id' => $tempImage->id,
    //             'ImagePath' => asset('/temp/thumb/'.$newName),
    //             'message' =>'image uploaded successfully'

    //         ]);

    //     }

    // }
    public function create(Request $request) {
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $ext = $image->getClientOriginalExtension();
            $newName = time().'.'.$ext;

            $tempImage = new TempImage();
            $tempImage->name = $newName;
            $tempImage->save();

            $image->move(public_path().'/temp/', $newName);

        // ... (proses thumbnail, dll.)

            return response()->json([
                'status' => true,
                'image_id' => $tempImage->id,
                'ImagePath' => asset('/temp/thumb/'.$newName),
                'message' => 'Image uploaded successfully'
            ]);
        }
        // app/Http/Controllers/admin/TempImagesController.php

    // public function getThumbnail($imageName)
    // {
    //     $thumbnailPath = public_path('/temp/thumb/' . $imageName);

    //     if (file_exists($thumbnailPath)) {
    //         return response()->file($thumbnailPath);
    //     } else {
    //         abort(404); // Tampilkan halaman 404 jika thumbnail tidak ditemukan
    //     }
    // }


    // Handle jika tidak ada file diunggah
        return response()->json([
            'status' => false,
            'message' => 'No image uploaded.'
        ]);
    }

}
