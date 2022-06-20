<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CapsController;
use App\Http\Controllers\WorkController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\StoryController;
use App\Http\Controllers\TrainController;
use App\Http\Controllers\ObjectController;
use App\Http\Controllers\PlanetController;
use App\Http\Controllers\RewardController;
use App\Http\Controllers\MapCaseController;
use App\Http\Controllers\CharacterController;
use App\Http\Controllers\MainStoryController;
use App\Http\Controllers\CapScarecityController;
use App\Http\Controllers\WinConditionController;
use App\Http\Controllers\ConditionBaseController;
use App\Http\Controllers\ObjectDurationController;
use App\Http\Controllers\WaitingDurationController;
use App\Http\Controllers\CharacterCategoryController;
use App\Http\Controllers\StepController;
use App\Http\Controllers\UserController;

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

        Route::prefix('category')->group(function () {
            Route::post('/create', [CharacterCategoryController::class, 'create']);
            Route::post('/update', [CharacterCategoryController::class, 'update']);
            Route::post('/delete', [CharacterCategoryController::class, 'destroy']);
        });
    });

    Route::prefix('caps')->group(function () {
        Route::post('/update', [CapsController::class, 'update']);
        Route::post('/create', [CapsController::class, 'create']);
        Route::post('/delete', [CapsController::class, 'destroy']);

        Route::prefix('scarecity')->group(function () {
            Route::post('/create', [CapScarecityController::class, 'create']);
            Route::post('/update', [CapScarecityController::class, 'update']);
            Route::post('/delete', [CapScarecityController::class, 'destroy']);
        });
    });

    Route::prefix('object')->group(function () {
        Route::post('/update', [ObjectController::class, 'update']);
        Route::post('/create', [ObjectController::class, 'create']);
        Route::post('/delete', [ObjectController::class, 'destroy']);

        Route::prefix('duration')->group(function () {
            Route::post('/create', [ObjectDurationController::class, 'create']);
            Route::post('/update', [ObjectDurationController::class, 'update']);
            Route::post('/delete', [ObjectDurationController::class, 'destroy']);
        });
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

    Route::prefix('waiting/duration')->group(function () {
        Route::post('/update', [WaitingDurationController::class, 'update']);
        Route::post('/create', [WaitingDurationController::class, 'create']);
        Route::post('/delete', [WaitingDurationController::class, 'destroy']);
    });

    Route::prefix('planet')->group(function () {
        Route::post('/update', [PlanetController::class, 'update']);
        Route::post('/create', [PlanetController::class, 'create']);
        Route::post('/delete', [PlanetController::class, 'destroy']);

        Route::prefix('case')->group(function () {
            Route::post('/update', [MapCaseController::class, 'update']);
            Route::post('/create', [MapCaseController::class, 'create']);
            Route::post('/delete', [MapCaseController::class, 'destroy']);
        });
    });

    Route::prefix('condition')->group(function () {
        Route::post('/update', [WinConditionController::class, 'update']);
        Route::post('/create', [WinConditionController::class, 'create']);
        Route::post('/delete', [WinConditionController::class, 'destroy']);
        Route::prefix('base')->group(function () {
            Route::post('/update', [ConditionBaseController::class, 'update']);
            Route::post('/create', [ConditionBaseController::class, 'create']);
            Route::post('/delete', [ConditionBaseController::class, 'destroy']);
        });
    });

    Route::prefix('reward')->group(function () {
        Route::post('/update', [RewardController::class, 'update']);
        Route::post('/create', [RewardController::class, 'create']);
        Route::post('/delete', [RewardController::class, 'destroy']);
    });

    Route::prefix('story')->group(function () {
        Route::post('/update', [StoryController::class, 'update']);
        Route::post('/create', [StoryController::class, 'create']);
        Route::post('/delete', [StoryController::class, 'destroy']);
        Route::prefix('category')->group(function () {
            Route::post('/update', [MainStoryController::class, 'update']);
            Route::post('/create', [MainStoryController::class, 'create']);
            Route::post('/delete', [MainStoryController::class, 'destroy']);
        });
        Route::prefix('step')->group(function () {
            Route::post('/update', [StepController::class, 'update']);
            Route::post('/create', [StepController::class, 'create']);
            Route::post('/delete', [StepController::class, 'destroy']);
        });
    });

    Route::prefix('user')->group(function () {
        Route::post('/create', [UserController::class, 'create']);
        Route::post('/update', [UserController::class, 'update']);
        Route::post('/upload', [UserController::class, 'uploadPicture']);
    });
});
