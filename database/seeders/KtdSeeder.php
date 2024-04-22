<?php

namespace Database\Seeders;

use App\Models\Ktd;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class KtdSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Ktd::factory(12)->create();
    }
}
