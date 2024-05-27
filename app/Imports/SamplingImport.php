<?php

namespace App\Imports;

use App\Models\Samplings;
use Maatwebsite\Excel\Concerns\ToModel;

class SamplingImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new Samplings([
            //
        ]);
    }
}
