<?php

use App\Http\Controllers\Admin\AuthController;
use App\Http\Controllers\Admin\UserController;
use App\Http\Controllers\Admin\WhatsappReplyController;
use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\ReportController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


// Route::prefix('admin')->group(function () {
// });

Route::name('admin.')->group(function () {
    //auth
    Route::get('/auth/login', [AuthController::class, 'index'])->name('login');
    Route::post('/auth/login-action', [AuthController::class, 'loginAction'])->name('loginAction');
    Route::get('/auth/logout-action', [AuthController::class, 'logout'])->name('logout');
    //end auth
    //endpoint seccure
    Route::middleware(['auth'])->group(function () {
        Route::get('/', [DashboardController::class, 'index'])->name('dashboard');
        //whatsapp reply master
        Route::post('/whatsapp_reply/update/{id}', [WhatsappReplyController::class, 'update'])->name('whatsapp_reply.update');
        Route::get('/whatsapp_reply/master-data', [WhatsappReplyController::class, 'getsMaster'])->name('whatsapp_reply.master_data');
        Route::resource('whatsapp_reply', WhatsappReplyController::class, ['names' => 'whatsapp_reply'])->except('update');
        //end whatsapp reply master

        //users
        Route::resource('user', UserController::class, ['names' => 'user'])->except(['update']);
        Route::post('/user/{id}/update', [UserController::class, 'update'])->name('user.updated');
        //end user

        //whatsapp reply sub1
        Route::get('/whatsapp_replies/sub1/{id}', [WhatsappReplyController::class, 'indexSub1'])->name('whatsapp_reply.sub1');
        Route::get('/whatsapp_replies/sub1/{id}/create', [WhatsappReplyController::class, 'createSub1'])->name('whatsapp_reply.sub1.create');
        Route::post('/whatsapp_replies/sub1/store', [WhatsappReplyController::class, 'storeSub1'])->name('whatsapp_reply.sub1.store');
        // Route::get('/whatsapp_replies/sub1/{id}/edit', [WhatsappReplyController::class, 'indexSub1'])->name('whatsapp_reply.sub1.edit');
        //end sub reply sub1

        // whatsapp eply sub2
        Route::get('/whatsapp_replies/sub2/{id}', [WhatsappReplyController::class, 'indexSub2'])->name('whatsapp_reply.sub2');
        //end whatsapp reply sub2

       // report
       Route::get('/report/harian', [ReportController::class, 'harian'])->name('report.harian');
       Route::get('/report/harian-pdf', [ReportController::class, 'reportharianPdf'])->name('report.harianPdf');
       Route::get('/report/detail-harian', [ReportController::class, 'reportharianDetail'])->name('report.harianDetail');
       //report
    });
});
