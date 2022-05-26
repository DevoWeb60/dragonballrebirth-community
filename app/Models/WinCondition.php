<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WinCondition extends Model
{
    use HasFactory;

    public function realName(){
        return $this->belongsTo(WinConditionBase::class, 'condition_base_id');
    }

    public function train(){
        return $this->belongsTo(Train::class, 'special_trains');
    }

    public function object(){
        return $this->belongsTo(ObjectItem::class, 'object_harvest');
    }
}
