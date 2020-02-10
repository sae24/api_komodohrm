<?php

namespace App\Models;
use Illuminate\Auth\Authenticatable;
use Laravel\Lumen\Auth\Authorizable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;
use Illuminate\Contracts\Auth\Access\Authorizable as AuthorizableContract;
use Tymon\JWTAuth\Contracts\JWTSubject;
use \Illuminate\Auth\RequestGuard;
use App\Traits\UsesUuid;

class User extends Model 
{
    // use UsesUuid;
    protected $primaryKey='id_user';
    protected $guarded = ['uuid'];
    protected $table = 'users';
    protected $fillable = ['id_user','nama', 'email','password','role','created_by','created_date','status'];
    public $incrementing = false;
    public function getJWTIdentifier()
    {
        return $this->getKey();
    }
    public function getJWTCustomClaims()
    {
        return [];
    }
    // protected $hidden = [
    //     'password',
    // ];
}