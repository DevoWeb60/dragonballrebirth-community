<?php

use App\Http\Controllers\CapsController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ObjectController;
use App\Http\Controllers\CharacterController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\MainStoryController;
use App\Http\Controllers\TrainController;
use App\Http\Controllers\WorkController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
|Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [HomeController::class, 'index']);

// CHARACTERS
Route::get("/personnages", [CharacterController::class, 'index']);

// OBJECTS
Route::get("/objets", [ObjectController::class, 'index']);

// WORKS
Route::get("/metiers", [WorkController::class, 'index']);

// WORKS
Route::get("/capsules", [CapsController::class, 'index']);

// TRAINS
Route::get("/entrainements", [TrainController::class, 'index']);

// ADVENTURE MODE
Route::get("/mode-aventure", [MainStoryController::class, 'index']);




































