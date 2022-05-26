<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AdventureMode extends Model
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
    public function character(){
        return $this->belongsTo(Character::class, "character_id");
    }
    public function enemy(){
        return $this->belongsTo(Character::class, "enemy_id");
    }
    public function conditions(){
        return $this->belongsToMany(WinCondition::class, 'link_win_conditions_to_steps', 'step_number', 'conditions_id');
    }
    public function rewards(){
        return $this->belongsToMany(Rewards::class, 'link_rewards_to_steps', 'step_number', 'rewards_id');
    }
}
