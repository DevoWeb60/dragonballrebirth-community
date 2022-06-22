<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CapsController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\WorkController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\StoryController;
use App\Http\Controllers\TrainController;
use App\Http\Controllers\ObjectController;
use App\Http\Controllers\CharacterController;
use App\Http\Controllers\MainStoryController;

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

// !ADMIN
Route::get('/dashboard', [AdminController::class, 'index'])->name('admin.index');


// HOME
Route::get('/', [HomeController::class, 'index'])->name('home.index');

Route::get('/divers', [HomeController::class, 'various'])->name('various.index');
// CHARACTERS
Route::get("/personnages", [CharacterController::class, 'index'])->name('character.index');

// OBJECTS
Route::get("/objets", [ObjectController::class, 'index'])->name('object.index');

// WORKS
Route::get("/metiers", [WorkController::class, 'index'])->name('work.index');

// WORKS
Route::get("/capsules", [CapsController::class, 'index'])->name('caps.index');

// TRAINS
Route::get("/entrainements", [TrainController::class, 'index'])->name('train.index');

// ADVENTURE MODE
Route::get("/mode-aventure", [MainStoryController::class, 'index'])->name('adventureMode.index');
Route::get("/mode-aventure/{story}", [StoryController::class, 'show'])->name('adventureMode.show');

// ADDITIONAL QUEST
Route::get("/quetes-annexes/", [StoryController::class, 'index'])->name('additionalQuest.index');
Route::get("/quetes-annexes/{story}", [StoryController::class, 'show'])->name('additionalQuest.show');
