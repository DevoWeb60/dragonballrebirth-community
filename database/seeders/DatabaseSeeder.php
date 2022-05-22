<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\User::factory(1)->create();
        \App\Models\WinCondition::factory(1)->create();
        \App\Models\WaitingDuration::factory(1)->create();
        \App\Models\Story::factory(1)->create();
        \App\Models\ObjectDuration::factory(1)->create();
        \App\Models\MapCase::factory(1)->create();
        \App\Models\Planet::factory(1)->create();
        \App\Models\CapsScarecity::factory(1)->create();
        \App\Models\Caps::factory(1)->create();
        \App\Models\ObjectItem::factory(1)->create();
        \App\Models\Character::factory(1)->create();
        \App\Models\Train::factory(1)->create();
        \App\Models\Work::factory(1)->create();
        \App\Models\Rewards::factory(1)->create();
        \App\Models\AdventureMode::factory(1)->create();

    }
}
