<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pendonor extends Model
{
    public function province()
    {
    	return $this->belongsTo('App\Province','provinsi');
    }

    public function regencie()
    {
    	return $this->belongsTo('App\Regencie','regensi');
    }
    public function district()
    {
    	return $this->belongsTo('App\District','kec');
    }

    public function user()
    {
    	return $this->belongsTo('App\User','users_id');
    }

     public function donor() { 
      return $this->hasMany('App\Donor'); 
    }
}
