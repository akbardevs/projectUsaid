<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class District extends Model
{
    public function pendonor() { 
      return $this->hasOne('App\Pendonor'); 
    }
}
