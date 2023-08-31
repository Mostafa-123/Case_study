<?php

namespace App\Http\Controllers;

use App\Exports\UsersExport;
use App\Imports\UsersImport;
use App\Models\UserData;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;

class userDataController extends Controller
{
    public function export()
    {
        return Excel::download(new UsersExport, 'usersData.xlsx');
    }

    public function select()
    {
        return view('selectExcel');
    }

    public function import(Request $request)
    {
        $file=$request->file('file');
        Excel::import(new UsersImport, $file);

        return redirect('/')->with('success', 'All is saved!');
    }

    public function allUsersData()
    {
        return view('userData',['userData' => UserData::all()]);
    }
}
