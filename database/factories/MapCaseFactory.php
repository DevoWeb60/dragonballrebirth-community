<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\MapCase>
 */
class MapCaseFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            [
                'case' => "C-3"
            ],
            [
                'case' => "C-4"
            ],
            [
                'case' => "C-5"
            ],
            [
                'case' => "C-6"
            ],
            [
                'case' => "C-7"
            ],
            [
                'case' => "C-8"
            ],
            [
                'case' => "C-9"
            ],
        ];
    }
}
