<?php

use App\Http\Controllers\userDataController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', [userDataController::class, 'allUsersData']);
Route::get('/usersData/exportExcel', [userDataController::class, 'export'])->name('userExcelData');

Route::get('/selectExcel', [userDataController::class, 'select'])->name('selectExcelData');
Route::post('/usersData/importExcel', [userDataController::class, 'import'])->name('importExcelData');
