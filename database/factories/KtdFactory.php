<?php

namespace Database\Factories;

use App\Models\Dosen;
use App\Models\Ktd;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Ktd>
 */
class KtdFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */

    protected $model = Ktd::class;
    public function definition(): array
    {
        $dosen_nip = Dosen::all()->pluck('nip')->toArray();

        return [
            'nip' => $this->faker->unique()->randomElement($dosen_nip),
            'nidn' => $this->faker->unique()->numerify('##########')
        ];
    }
}
