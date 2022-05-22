<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Work>
 */
class WorkFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'name' => "Livraison de lait",
            'map_case_id' => 1,
            'planet_id' => 1,
            'object_id' => 1,
            'waiting_duration_id' => 1,
            'unlock_step' => 1,
            'utils' => "Énergie",
        ];
    }
}
