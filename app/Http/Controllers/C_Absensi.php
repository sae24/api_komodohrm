<?php

namespace App\Http\Controllers;

use App\Models\Absensi;
use Illuminate\Support\Str;
use Ramsey\Uuid\Uuid;
use Illuminate\Http\Request;

class C_Absensi extends Controller
{
	public function index(){
    	$data = 
    	['status' => true,
         'message' => 'Data Ditemukan',
         'code' => 200,
         'hasil' => Absensi::all()];

        return [
        	'data'=> $data
        ];}

    public function inputdata(Request $request) {
        $this->validate($request, [
            // 'id_absensi' => 'required',
            'checkin_date' => 'required', 
            'checkin_time' => 'required',
            'check_out_date' => 'required',
            'check_out_time' => 'required',
            'lattitude'=> 'required',
            'longitude'=> 'required',
            'id_level'=> 'required',
            'late_reason'=> 'required',
            'leave_reason'=> 'required',
        ]);

        $inputan = Absensi::create([
            'id_absensi'=>Str::uuid()->toString('id_absensi'),
            'checkin_date'=> $request->get('checkin_date'), 
            'checkin_time'=> $request->get('checkin_time'),
            'check_out_date'=> $request->get('check_out_date'),
            'check_out_time'=> $request->get('check_out_time'),
            'lattitude'=> $request->get('lattitude'),
            'longitude'=> $request->get('longitude'),
            'id_level'=> $request->get('id_level'),
            'late_reason'=>$request->get('late_reason'),
            'leave_reason'=>$request->get('leave_reason')
        ]);
        $data = 
    	['status' => true,
         'message' => 'Berhasil Ditambahkan',
         'code' => 200,
         'hasil' => $inputan];

        return [
            'data' => $data
        ];}

    public function view($id){
        $post = Absensi::find($id);
        if (! $post) {
            return response()->json([
                'message' => 'post not found'
            ]);
        }

        $data = 
    	['status' => true,
         'message' => 'Data Ditemukan',
         'code' => 200,
         'hasil' => $post];

        return [
            'data' => $data
        ];}

    public function update(Request $request, $id){
    
    $post = Absensi::find($id);
    if ($post) {
        $post->update($request->all());

        $data = 
    	['status' => true,
         'message' => 'Data Berhasil Diupdate',
         'code' => 200,
         'hasil' => $post];

        return response()->json([
            'data' => $data
        ]);
    }
    return response()->json([
        'status' => false,
        'message' => 'Data Gagal Diupdate',
        'code' => 404,
        'hasil' => null
    ]);}

    //update with post
	public function updatedata(Request $request, $id){
	 $this->validate($request,
    [
        'nama' =>'required',
        'kehadiran' =>'required'
    ]);
    $post = Absensi::find($id);
    if ($post) {
        $post->update($request->all());

        $data = 
    	['status' => true,
         'message' => 'Data Berhasil Diupdate',
         'code' => 200,
         'hasil' => $post];

        return response()->json([
        	'data' => $data
        ]);}
    return response()->json([
        'status' => false,
        'message' => 'Data Gagal Diupdate',
        'code' => 404,
        'hasil' => null
    ]);}

	public function delete($id){
        $post = Absensi::find($id);

        if ($post) {
            $post->delete();

        $data = 
    		['status' => true,
         	 'message' => 'Data Berhasil Dihapus',
         	 'code' => 200,
         	 'hasil' => $post]; 
            return response()->json([
        		'data' => $data
            ]);
        }

        return response()->json([
            'status' => false,
        	'message' => 'Data Gagal Dihapus',
        	'code' => 404,
        	'hasil' => null
        ], 404);}

}