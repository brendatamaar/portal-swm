<?php

namespace App\Imports;

use App\Models\Samplings;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\ToArray;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class FirstFileImport implements ToArray, WithHeadingRow
{
    /**
    * @param array $array
    *
    * @return array
    */
    public function array(array $array)
    {
        return $array;
    }
}
