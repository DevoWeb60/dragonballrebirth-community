<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CapsController;
use App\Http\Controllers\WorkController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\ObjectController;
use App\Http\Controllers\CharacterController;
use App\Http\Controllers\TrainController;

Route::post('/login', [LoginController::class, 'login']);

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['middleware' => ['auth:sanctum']], function () {

    Route::get('/alldata', [AdminController::class, 'api']);

    Route::prefix('character')->group(function () {
        Route::post('/update', [CharacterController::class, 'update']);
        Route::post('/create', [CharacterController::class, 'create']);
        Route::post('/delete', [CharacterController::class, 'destroy']);
    });

    Route::prefix('caps')->group(function () {
        Route::post('/update', [CapsController::class, 'update']);
        Route::post('/create', [CapsController::class, 'create']);
        Route::post('/delete', [CapsController::class, 'destroy']);
    });

    Route::prefix('object')->group(function () {
        Route::post('/update', [ObjectController::class, 'update']);
        Route::post('/create', [ObjectController::class, 'create']);
        Route::post('/delete', [ObjectController::class, 'destroy']);
    });

    Route::prefix('work')->group(function () {
        Route::post('/update', [WorkController::class, 'update']);
        Route::post('/create', [WorkController::class, 'create']);
        Route::post('/delete', [WorkController::class, 'destroy']);
    });

    Route::prefix('train')->group(function () {
        Route::post('/update', [TrainController::class, 'update']);
        Route::post('/create', [TrainController::class, 'create']);
        Route::post('/delete', [TrainController::class, 'destroy']);
    });
});
