<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Support\Str;
use Ramsey\Uuid\Uuid;
use App\Helpers\Helper;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Tymon\JWTAuth\Facades\JWTAuth;
use Tymon\JWTAuth\Facades\JWTFactory;
use App\Message;
use Illuminate\Support\Facades\Hash;
use DateTime;

class C_User extends Controller
{
	public function index(){
    	$data = 
    	['status' => true,
         'message' => 'Data Ditemukan',
         'code' => 200,
         'hasil' => User::all()];

        return [
        	'data'=> $data
        ];}

    public function inputdata(Request $request) {
        $this->validate($request, [
            // 'id_user' => 'required',
            'nama'=> 'required', 
            'email'=> 'required',
            'password'=> 'required',
            'role'=> 'required',
            'created_by'=> 'required',
            'created_date'=> 'required',
            'status'=> 'required',
        ]);

        $inputan = User::create([
            'id_user'=>Str::uuid()->toString('id_user'),
            'nama'=> $request->get('nama'), 
            'email'=> $request->get('email'),
            'password'=> Hash::make($request->get('password')),
            'role'=> $request->get('role'),
            'created_by'=> $request->get('created_by'),
            'created_date'=> $request->get('created_date'),
            'status'=> $request->get('status')
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
        $post = User::find($id);
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
    
    $post = User::find($id);
    if ($post) {
        $post->update([
            'nama'=> $request->get('nama'), 
            'email'=> $request->get('email'),
            'password'=> Hash::make($request->get('password')),
            'role'=> $request->get('role'),
            'created_by'=> $request->get('created_by'),
            'created_date'=> $request->get('created_date'),
            'status'=> $request->get('status')
        ]);

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
        'nama'=> 'required', 
        'email'=> 'required',
        'password'=> 'required',
        'role'=> 'required',
        'created_by'=> 'required',
        'created_date'=> 'required',
        'status'=> 'required',
    ]);
    $post = User::find($id);
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
        $post = User::find($id);

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
        public function login (Request $request){
            $validator=Validator::make($request->all(),[
                'email'=>'required|string',
                'password'=>'required|string'
            ],Message::validate());
            if ($validator->fails()) {
                return response()->json([
                    'message'=>'Gagal Login'
                ],404);
            }
        }
}