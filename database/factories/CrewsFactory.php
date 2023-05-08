<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Crews>
 */
class CrewsFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            "first_name" => $this->faker->name(),
            "last_name" => $this->faker->name(),
            "middle_name" => $this->faker->name(),
            "email" => $this->faker->safeEmail,
            "address" => $this->faker->address,
            "education" => $this->faker->text($maxNbChars = 60),
            "contact_details" => $this->faker->phoneNumber
        ];
    }
}
