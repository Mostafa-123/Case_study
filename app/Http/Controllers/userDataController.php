<?php

namespace App\Http\Controllers;

use App\Exports\UsersExport;
use App\Imports\UsersImport;
use App\Models\UserData;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\Session;
use PhpOffice\PhpSpreadsheet\IOFactory;

class userDataController extends Controller
{
    public function export(Request $request)
    {
        $columns = $request->input('columns', ['full_name', 'phone_number', 'email']);
        return Excel::download(new UsersExport($columns), 'usersData.xlsx');
    }

    public function select()
    {
        return view('selectExcel');
    }
    public function selectColumns()
    {
        return view('selectColumns');
    }

    public function mapColumn(Request $request){
        $file = $request->file('file');
        $filePath = $file->store();
        $temporaryFilePath = storage_path('app/public/'.$filePath);
        $spreadsheet = IOFactory::load($temporaryFilePath);
        $worksheet = $spreadsheet->getActiveSheet();
        $data = $worksheet->toArray();
        $headerRow = array_shift($data);
        return view('whichForWhichColumn', ['header' => $headerRow, 'data' => $data,'file'=>$temporaryFilePath]);

    }

    public function import(Request $request)
    {

        $file=$request->file;
        $columns = $request->only(['full_name', 'phone_number', 'email']);
        Excel::import(new UsersImport($columns), $file);
        return redirect()->route('data')->with('success', 'All is saved!');
    }

    public function allUsersData()
    {
        return view('userData',['userData' => UserData::all()]);
    }
}
