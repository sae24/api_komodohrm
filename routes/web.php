<?php
use \Illuminate\Http\Request;
use \Illuminate\Auth\RequestGuard;

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/
//CRUD API ABSENSI 
$router->post('/tambahDataAbsensi', 'C_Absensi@inputdata');
$router->get('/viewsDataAbsensi','C_Absensi@index');
$router->get('/viewDataAbsensi/{id}','C_Absensi@view');
$router->put('/updateDataAbsensi/{id}','C_Absensi@update');
$router->post('/updateDataAbsensi/{id}','C_Absensi@updatedata');
$router->delete('/deleteDataAbsensi/{id}','C_Absensi@delete');
//LOGIN USER
$router->post('auth/login','AuthController@authenticate');
// $router->get('/login', function (Request $request) {
//     $token = app('auth')->attempt($request->only('email', 'password'));

//     return response()->json(compact('token'));
// });
//CRUD API USER
$router->post('/tambahDataUser', 'C_User@inputdata');
$router->get('/viewsDataUser','C_User@index');
$router->get('/viewDataUser/{id}','C_User@view');
$router->put('/updateDataUser/{id}','C_User@update');
$router->post('/updateDataUser/{id}','C_User@updatedata');
$router->delete('/deleteDataUser/{id}','C_User@delete');

//CRUD API ABSENSI LEVEL
$router->post('/tambahDataAbsensiLevel', 'C_Absensi_Level@inputdata');
$router->get('/viewsDataAbsensiLevel','C_Absensi_Level@index');
$router->get('/viewDataAbsensiLevel/{id}','C_Absensi_Level@view');
$router->put('/updateDataAbsensiLevel/{id}','C_Absensi_Level@update');
$router->post('/updateDataAbsensiLevel/{id}','C_Absensi_Level@updatedata');
$router->delete('/deleteDataAbsensiLevel/{id}','C_Absensi_Level@delete');

//CRUD API KARYAWAN
$router->post('/tambahDataKaryawan', 'C_Karyawan@inputdata');
$router->get('/viewsDataKaryawan','C_Karyawan@index');
$router->get('/viewDataKaryawan/{id}','C_Karyawan@view');
$router->put('/updateDataKaryawan/{id}','C_Karyawan@update');
$router->post('/updateDataKaryawan/{id}','C_Karyawan@updatedata');
$router->delete('/deleteDataKaryawan/{id}','C_Karyawan@delete');