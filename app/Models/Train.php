<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Train extends Model
{
    use HasFactory;

    public function planet(){
        return $this->belongsTo(Planet::class, "planet_id");
    }
    public function mapCase(){
        return $this->belongsTo(MapCase::class, "map_case_id");
    }
    public function duration(){
        return $this->belongsTo(WaitingDuration::class, "duration_id");
    }
}
