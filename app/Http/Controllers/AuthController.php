<?php

namespace App\Http\Controllers;

use Validator;
use App\Models\User;
use Firebase\JWT\JWT;
use Illuminate\Http\Request;
use Firebase\JWT\ExpiredException;
use Illuminate\Support\Facades\Hash;
use Laravel\Lumen\Routing\Controller as BaseController;

class AuthController extends BaseController 
{
    /**
     * The request instance.
     *
     * @var \Illuminate\Http\Request
     */
    private $request;

    /**
     * Create a new controller instance.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return void
     */
    public function __construct(Request $request) {
        $this->request = $request;
    }

    /**
     * Create a new token.
     * 
     * @param  \App\User   $user
     * @return string
     */
    protected function jwt(User $user) {
        $payload = [
            'iss' => "lumen-jwt", 
            'sub/id' => $user->id, // Subjek  token
            'nama'=>$user->nama,
            'iat' => time(), // Waktu token dibuat. 
            'exp' => time() + 60*60 // waktu token kadaluarsa
        ];
        
        
        return JWT::encode($payload, env('JWT_SECRET'));
    } 

    /**
     * Authenticate a user and return the token if the provided credentials are correct.
     * 
     * @param  \App\User   $user 
     * @return mixed
     */
    public function authenticate(User $user) {
        $this->validate($this->request, [
            'email'     => 'required|email',
            'password'  => 'required'
        ]);

        // Mencari email user
        $user = User::where('email', $this->request->input('email'))->first();

        if (!$user) {
            return response()->json([
                'status'=>'failed',
                'error' => 'Email tidak ada.',
                'message'=>'Gagal Genrate Token',
                'code'=>400
            ], 400);
        }

        // Verifikasi passwordnya dan genrate token
        if (Hash::check($this->request->input('password'), $user->password)) {
            return response()->json([
                'status' => 'success',
                'message' => 'Berhasil Genrate Token',
                'code' => 200,
                'token' => $this->jwt($user)
            ], 200);
        }

        // ketika tidak masuk kondisi manapun
        return response()->json([
            'status'=>'failed',
            'error' => 'Email atau password salah.',
            'message'=>'Gagal Genrate Token',
            'code'=>400
        ], 400);
    }
}