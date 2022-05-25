<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MainStory extends Model
{
    use HasFactory;

    public function saga(){
        return $this->hasMany(Story::class, "main_story");
    }
}
