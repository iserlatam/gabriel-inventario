<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use App\Models\;
use App\Models\Categoria;
use App\Models\Producto;

class ProductoFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Producto::class;

    /**
     * Define the model's default state.
     */
    public function definition(): array
    {
        return [
            'nombre' => fake()->word(),
            'descripcion' => fake()->word(),
            'precio_maq_noiva' => fake()->numberBetween(-10000, 10000),
            'precio_maq_iva' => fake()->numberBetween(-10000, 10000),
            'precio_maqsello_noiva' => fake()->numberBetween(-10000, 10000),
            'precio_maqsello_iva' => fake()->numberBetween(-10000, 10000),
            'img_url' => fake()->text(),
            'cantidad' => fake()->word(),
            'dimensiones' => fake()->word(),
            'unid_dimension' => fake()->word(),
            'fabricante_id' => ::factory(),
            'categoria_id' => Categoria::factory(),
        ];
    }
}
