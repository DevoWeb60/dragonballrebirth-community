<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Train>
 */
class TrainFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'name' => "Salle de l'horloge",
            'icon' => "https://www.dragonballrebirth.fr/img/training/popo.png",
            'map_case_id' => 1,
            'planet_id' => 1,
            'gain' => "Obtention des magies 2 et 3",
            'required_level' => 0,
            'step_id' => 1,
            'duration_id' => 1,
        ];
    }
}
