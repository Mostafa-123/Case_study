<?php

namespace App\Exports;

use App\Models\UserData;
use Illuminate\View\View;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;

class UsersExport implements FromView,ShouldAutoSize
{
    /**
    * @return \Illuminate\Support\Collection
    */
    protected $columns;

    public function __construct($columns)
    {
        $this->columns = $columns;
    }
    public function view():View
    {
        return view('excelData',['userData' => UserData::select($this->columns)->get(),'columns'=>$this->columns]);
    }
}
