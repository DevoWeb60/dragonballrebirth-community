<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CapsController;
use App\Http\Controllers\CharacterController;
use App\Http\Controllers\LoginController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

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

    Route::get('/caps', [CapsController::class, 'api']);
});

Route::post('/login', [LoginController::class, 'login']);


