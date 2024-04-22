<?php

namespace Database\Seeders;

use App\Models\Ktm;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class KtmSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Ktm::factory(6)->create();
    }
}
