<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Story>
 */
class StoryFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'story_number' => 1,
            'story_name' => 'Saga Saiyan',
            'thumbnail' => 'https://www.dragonballrebirth.fr/img/aventure/etapes/1/story-1-1.jpg'
        ];
    }
}
