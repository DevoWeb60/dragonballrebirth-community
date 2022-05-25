<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Work extends Model
{
    use HasFactory;

    public function object(){
        return $this->belongsTo(ObjectItem::class, "object_id");
    }
    public function planet(){
        return $this->belongsTo(Planet::class, "planet_id");
    }
    public function mapCase(){
        return $this->belongsTo(MapCase::class, "map_case_id");
    }
    public function duration(){
        return $this->belongsTo(WaitingDuration::class, "waiting_duration_id");
    }
}
