<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Character extends Model
{
    use HasFactory;

    public function caps(){
        return $this->belongsTo(Caps::class);
    }

    public function story(){
        return $this->belongsTo(Story::class);
    }
}
