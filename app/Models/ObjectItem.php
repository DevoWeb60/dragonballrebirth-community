<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ObjectItem extends Model
{
    use HasFactory;

    public function duration(){
        return $this->belongsTo(ObjectDuration::class, 'object_duration_id');
    }
}
