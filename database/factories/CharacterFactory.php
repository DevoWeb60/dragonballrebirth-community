<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Character>
 */
class CharacterFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'name' => "Son Goku",
            'avatar' => "https://www.dragonballrebirth.fr/img/characters/son-goku/transformations/base/head.png",
            'caps_id' => 1,
            'step_unlock' => 1,
            'story_id' => 1,
            'ruby_cost' => 0,
        ];
    }
}
