<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Device>
 */
class DeviceFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'macaddress' => $this->faker->macAddress(),
            'longitude' => $this->faker->longitude(),
            'latitude' => $this->faker->latitude(),
            'bloodpressure' => $this->faker->numberBetween(0, 200),

        ];
    }
}
