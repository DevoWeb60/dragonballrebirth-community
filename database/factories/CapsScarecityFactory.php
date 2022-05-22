<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\CapsScarety>
 */
class CapsScarecityFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'name' => "Personnage",
            'icon' => "https://www.dragonballrebirth.fr/css/images/capsules/capsule-2-0.svg"
        ];
    }
}
