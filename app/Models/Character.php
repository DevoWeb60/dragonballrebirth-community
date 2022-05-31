<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

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
