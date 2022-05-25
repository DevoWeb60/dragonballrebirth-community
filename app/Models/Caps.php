<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Caps extends Model
{
    use HasFactory;

    public function character(){
        return $this->hasOne(Character::class);
    }

    public function scarecities(){
        return $this->belongsTo(CapsScarecity::class, 'caps_scarecities_id');
    }
}
