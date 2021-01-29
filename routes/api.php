<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::resource('business', 'BusinessTypeController');
Route::resource('explores', 'ExploreController');
Route::resource('expersites', 'ExpertiseCotroller');
Route::resource('events', 'EventController');
Route::resource('vouchers', 'VoucherController');
Route::resource('workplaces', 'WorkPlaceController');
// Route::get('place', 'PlaceController@index');

// Route::get('business', "BusinessTypeController@index");

// Route::apiResource('expertise', 'ExpertiseController');
// Route::get('expertise', ExpertiseController::class);
