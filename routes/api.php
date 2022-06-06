<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CapsController;
use App\Http\Controllers\CharacterController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\ObjectController;

Route::post('/login', [LoginController::class, 'login']);

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['middleware' => ['auth:sanctum']], function () {
    Route::prefix('character')->group(function(){
        Route::get('/', [CharacterController::class, 'api']);
        Route::post('/update', [CharacterController::class, 'update']);
        Route::post('/create', [CharacterController::class, 'create']);
        Route::post('/delete', [CharacterController::class, 'destroy']);

    });

    Route::prefix('caps')->group(function(){
        Route::get('/', [CapsController::class, 'api']);
    });

    Route::prefix('object')->group(function(){
        Route::get('/', [ObjectController::class, 'api']);
    });

});



