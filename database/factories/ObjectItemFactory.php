<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\ObjectItem>
 */
class ObjectItemFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'name' => "Bouteille de lait",
            'icon' => "https://www.dragonballrebirth.fr/img/objet/lait.svg",
            'description' => "Peut être acquérie avec les métiers, la fouille, les quêtes et les commerces",
            'using' => "Augmente l'énergie d'une capsule verte",
            'consumable' => true,
            'object_duration_id' => 1,
        ];
    }
}
