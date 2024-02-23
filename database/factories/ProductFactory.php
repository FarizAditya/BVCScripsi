<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use App\Models\SubCategory;
use App\Models\Brand; // Update the namespace if it's different

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Product>
 */
class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $title = fake()->unique()->name();
        $slug = Str::slug($title);

    // Get existing subcategories and brands
        $subCategories = SubCategory::pluck('id')->toArray();
        $brands = Brand::pluck('id')->toArray();

        $subCatRandKey = array_rand($subCategories);
        $brandRandKey = array_rand($brands);

        return [
            'title' => $title,
            'slug' => $slug,
            'category_id' => 34,
            'sub_category_id' => $subCategories[$subCatRandKey],
            'brand_id' => $brands[$brandRandKey],
            'price' => rand(10, 1000),
            'sku' => rand(1000, 100000),
            'track_qty' => 'Yes',
            'qty' => 10,
            'is_featured' => 'Yes',
            'status' => 1
        ];   
    }

}
