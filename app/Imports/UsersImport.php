<?php

namespace App\Imports;

use App\Models\UserData;
use Illuminate\Support\Facades\Log;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Maatwebsite\Excel\Concerns\WithValidation;

class UsersImport implements ToModel,WithHeadingRow
{
    private $column;

    public function __construct($column)
    {
        $this->column = $column;
    }

    private $rowIndex=1;
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        if ($this->rowIndex >= 1){
            return new UserData([
                'full_name'     => $row[strtolower($this->column['full_name'])],
                'phone_number'     => $row[strtolower($this->column['phone_number'])],
                'email'    => $row[strtolower($this->column['email'])],
            ]);

        }
        $this->rowIndex++;
    }
}
