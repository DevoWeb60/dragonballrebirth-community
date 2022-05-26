<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Rewards extends Model
{
    use HasFactory;

    public function character(){
        return $this->belongsTo(Character::class, 'character_id');
    }
    public function object(){
        return $this->belongsTo(ObjectItem::class, 'object_id');
    }
    public function caps(){
        return $this->belongsTo(Caps::class, 'caps_id');
    }
    public function rewardsOnCharacter(){
        return $this->belongsTo(Character::class, 'rewards_character_id');
    }
}
