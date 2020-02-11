<?php
use App\Models\User;
use \Illuminate\Http\Request;
use \Illuminate\Auth\RequestGuard;
use Illuminate\Support\Str;
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
$router->get('/', function () use ($router) {
    return $router->app->version();
});
//get key
$router->get('/key', function() {
    return Str::random(32);
});

//CRUD API ABSENSI 
$router->post('/tambahDataAbsensi', 'C_Absensi@inputdata');
$router->get('/viewsDataAbsensi','C_Absensi@index');
$router->get('/viewDataAbsensi/{id_absensi}','C_Absensi@view');
$router->put('/updateDataAbsensi/{id_absensi}','C_Absensi@update');
$router->post('/updateDataAbsensi/{id_absensi}','C_Absensi@updatedata');
$router->delete('/deleteDataAbsensi/{id_absensi}','C_Absensi@delete');
//LOGIN USER
$router->post('auth/login','AuthController@authenticate');
$router->group(
    ['middleware' => 'jwt.auth'], 
    function() use ($router) {
        $router->get('users', function() {
            $users = \App\User::all();
            return response()->json($users);
        });
    }
);

//CRUD API USER
$router->post('/tambahDataUser', 'C_User@inputdata');
$router->get('/viewsDataUser','C_User@index');
$router->get('/viewDataUser/{id_user}','C_User@view');
$router->put('/updateDataUser/{id_user}','C_User@update');
$router->post('/updateDataUser/{id_user}','C_User@updatedata');
$router->delete('/deleteDataUser/{id_user}','C_User@delete');

//CRUD API ABSENSI LEVEL
$router->post('/tambahDataAbsensiLevel', 'C_Absensi_Level@inputdata');
$router->get('/viewsDataAbsensiLevel','C_Absensi_Level@index');
$router->get('/viewDataAbsensiLevel/{id_absensi_level}','C_Absensi_Level@view');
$router->put('/updateDataAbsensiLevel/{id_absensi_level}','C_Absensi_Level@update');
$router->post('/updateDataAbsensiLevel/{id_absensi_level}','C_Absensi_Level@updatedata');
$router->delete('/deleteDataAbsensiLevel/{id_absensi_level}','C_Absensi_Level@delete');

//CRUD API KARYAWAN
$router->post('/tambahDataKaryawan', 'C_Karyawan@inputdata');
$router->get('/viewsDataKaryawan','C_Karyawan@index');
$router->get('/viewDataKaryawan/{id_karyawan}','C_Karyawan@view');
$router->put('/updateDataKaryawan/{id_karyawan}','C_Karyawan@update');
$router->post('/updateDataKaryawan/{id_karyawan}','C_Karyawan@updatedata');
$router->delete('/deleteDataKaryawan/{id_karyawan}','C_Karyawan@delete');