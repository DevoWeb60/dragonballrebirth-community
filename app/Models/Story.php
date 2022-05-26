<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Story extends Model
{
    use HasFactory;

    public function storyUnlock(){
        return $this->belongsTo(Story::class, 'story_unlock');
    }

    public function steps(){
        return $this->hasMany(AdventureMode::class, 'story_id');
    }
}
