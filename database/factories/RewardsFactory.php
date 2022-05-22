<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Rewards>
 */
class RewardsFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'character_id' => null,
            'object_id' => null,
            'caps_id' =>  null,
            'zenis' => 500,
            'experience' => null,
        ];
    }
}
