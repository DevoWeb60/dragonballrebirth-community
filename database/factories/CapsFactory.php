<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Caps>
 */
class CapsFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'name' => "Sauveur de la Terre",
            'min_level' => 1,
            'price' => 15000,
            'caps_scarecities_id' => 1,
            'strength' => null,
            'vitality' => null,
            'defense' => null,
            'energy' => null,
            'bonus' => "Point de base x2",
            'malus' => ""
        ];
    }
}
