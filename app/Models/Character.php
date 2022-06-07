<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
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

    public function category(){
        return $this->belongsToMany(CharacterCategory::class, 'link_characters_to_categories', 'character_id', 'category_id');
    }

    public function mainStory(){
        return $this->belongsTo(MainStory::class, 'main_story_id');
    }
}
