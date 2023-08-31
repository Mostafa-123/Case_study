<?php

namespace App\Imports;

use App\Models\UserData;
use Maatwebsite\Excel\Concerns\ToModel;

class UsersImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new UserData([
            'full_name'     => $row[0],
            'phone_number'     => $row[1],
            'email'    => $row[2],
        ]);
    }
}
