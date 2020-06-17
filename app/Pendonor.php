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
<<<<<<< HEAD

    public function user()
    {
    	return $this->belongsTo('App\User');
=======
    public function district()
    {
    	return $this->belongsTo('App\District','kec');
    }

    public function user()
    {
    	return $this->belongsTo('App\User','users_id');
>>>>>>> 523802307866a9c2c3544bac332fa9f813494cce
    }

     public function donor() { 
      return $this->hasMany('App\Donor'); 
    }
}
