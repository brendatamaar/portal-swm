<?php

namespace Database\Seeders;

use App\Models\Faqs;
use Illuminate\Database\Seeder;

class FaqsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faqs = [
            [
                'question' => 'Tes Question 1',
                'answer' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, quos.'
            ],
            [
                'question' => 'Tes Question 2',
                'answer' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, quos.'
            ],
            [
                'question' => 'Tes Question 3',
                'answer' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, quos.'
            ],
        ];

        foreach ($faqs as $faq) {
            Faqs::create($faq);
        }
    }
}
