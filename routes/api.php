<?php

use App\Http\Controllers\AdminController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CharacterController;
use App\Http\Controllers\LoginController;

Route::post('/login', [LoginController::class, 'login']);

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['middleware' => ['auth:sanctum']], function () {

    Route::get('/alldata', [AdminController::class, 'api']);

    Route::prefix('character')->group(function(){
        Route::post('/update', [CharacterController::class, 'update']);
        Route::post('/create', [CharacterController::class, 'create']);
        Route::post('/delete', [CharacterController::class, 'destroy']);
    });

});



