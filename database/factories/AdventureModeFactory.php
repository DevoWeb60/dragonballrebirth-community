<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\AdventureMode>
 */
class AdventureModeFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'story_id' => 1,
            'StepNumber' => 1,
            'character_id' => 1,
            'win_condition_id' => 1,
            'enemy_id' => 1,
            'enemy_level' => 3,
            'enemy_health' => 3000,
            'map_case_id' => 1,
            'planet_id' => 1,
            'reward_id' => 1,
        ];
    }
}
