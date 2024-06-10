<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\StoreController;
use App\Http\Controllers\CycleCountController;
use App\Http\Controllers\CycleCount1Controller;
use App\Http\Controllers\CycleCount2Controller;
use App\Http\Controllers\CycleCount3Controller;
use App\Http\Controllers\CycleCount4Controller;
use App\Http\Controllers\CycleCount5Controller;
use App\Http\Controllers\CycleCount6Controller;
use App\Http\Controllers\CycleCount7Controller;
use App\Http\Controllers\SamplingController;
use App\Http\Controllers\Sampling1Controller;
use App\Http\Controllers\Sampling2Controller;
use App\Http\Controllers\Sampling3Controller;
use App\Http\Controllers\Sampling4Controller;
use App\Http\Controllers\Sampling5Controller;
use App\Http\Controllers\Sampling6Controller;
use App\Http\Controllers\Sampling7Controller;
use App\Http\Controllers\MutasiTagBin1Controller;
use App\Http\Controllers\MutasiTagBin2Controller;
use App\Http\Controllers\MutasiTagBin3Controller;
use App\Http\Controllers\MutasiTagBin4Controller;
use App\Http\Controllers\MutasiTagBin5Controller;
use App\Http\Controllers\MutasiTagBin6Controller;
use App\Http\Controllers\MutasiTagBin7Controller;
use App\Http\Controllers\MutasiCW1Controller;
use App\Http\Controllers\MutasiCW2Controller;
use App\Http\Controllers\MutasiCW3Controller;
use App\Http\Controllers\MutasiCW4Controller;
use App\Http\Controllers\MutasiCW5Controller;
use App\Http\Controllers\MutasiCW6Controller;
use App\Http\Controllers\MutasiCW7Controller;
use App\Http\Controllers\MutasiD1Controller;
use App\Http\Controllers\MutasiD2Controller;
use App\Http\Controllers\MutasiD3Controller;
use App\Http\Controllers\MutasiD4Controller;
use App\Http\Controllers\MutasiD5Controller;
use App\Http\Controllers\MutasiD6Controller;
use App\Http\Controllers\MutasiD7Controller;
use App\Http\Controllers\CrystalReport1Controller;
use App\Http\Controllers\CrystalReport2Controller;
use App\Http\Controllers\CrystalReport3Controller;
use App\Http\Controllers\CrystalReport4Controller;
use App\Http\Controllers\CrystalReport5Controller;
use App\Http\Controllers\CrystalReport6Controller;
use App\Http\Controllers\CrystalReport7Controller;
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

Route::get('/login', function () {
    return view('auth/login');
})->middleware('guest');

Auth::routes();

Route::resources([
    'roles' => RoleController::class,
    'users' => UserController::class,
    'stores' => StoreController::class,
    'samplings' => SamplingController::class,
    'sampling1' => Sampling1Controller::class,
    'sampling2' => Sampling2Controller::class,
    'sampling3' => Sampling3Controller::class,
    'sampling4' => Sampling4Controller::class,
    'sampling5' => Sampling5Controller::class,
    'sampling6' => Sampling6Controller::class,
    'sampling7' => Sampling7Controller::class,
    'cycle_counts' => CycleCountController::class,
    'cycle_count1' => CycleCount1Controller::class,
    'cycle_count2' => CycleCount2Controller::class,
    'cycle_count3' => CycleCount3Controller::class,
    'cycle_count4' => CycleCount4Controller::class,
    'cycle_count5' => CycleCount5Controller::class,
    'cycle_count6' => CycleCount6Controller::class,
    'cycle_count7' => CycleCount7Controller::class,
    'profile' => ProfileController::class,
    'mutasi_tag_bin1' => MutasiTagBin1Controller::class,
    'mutasi_tag_bin2' => MutasiTagBin2Controller::class,
    'mutasi_tag_bin3' => MutasiTagBin3Controller::class,
    'mutasi_tag_bin4' => MutasiTagBin4Controller::class,
    'mutasi_tag_bin5' => MutasiTagBin5Controller::class,
    'mutasi_tag_bin6' => MutasiTagBin6Controller::class,
    'mutasi_tag_bin7' => MutasiTagBin7Controller::class,
    'mutasi_cw1' => MutasiCW1Controller::class,
    'mutasi_cw2' => MutasiCW2Controller::class,
    'mutasi_cw3' => MutasiCW3Controller::class,
    'mutasi_cw4' => MutasiCW4Controller::class,
    'mutasi_cw5' => MutasiCW5Controller::class,
    'mutasi_cw6' => MutasiCW6Controller::class,
    'mutasi_cw7' => MutasiCW7Controller::class,
    'mutasi_d1' => MutasiD1Controller::class,
    'mutasi_d2' => MutasiD2Controller::class,
    'mutasi_d3' => MutasiD3Controller::class,
    'mutasi_d4' => MutasiD4Controller::class,
    'mutasi_d5' => MutasiD5Controller::class,
    'mutasi_d6' => MutasiD6Controller::class,
    'mutasi_d7' => MutasiD7Controller::class,
    'crystal_report1' => CrystalReport1Controller::class,
    'crystal_report2' => CrystalReport2Controller::class,
    'crystal_report3' => CrystalReport3Controller::class,
    'crystal_report4' => CrystalReport4Controller::class,
    'crystal_report5' => CrystalReport5Controller::class,
    'crystal_report6' => CrystalReport6Controller::class,
    'crystal_report7' => CrystalReport7Controller::class,
]);

Route::get('change-password', [ProfileController::class, 'indexChangePassword'])->name('profile.update-password');
Route::post('update-password', [ProfileController::class, 'changePassword'])->name('profile.change-password');

Route::get('/api/get-sites/{region_id}', [StoreController::class, 'fetchSitesByRegion']);

Route::get('upload/sampling', [SamplingController::class, 'upload'])->name('samplings.upload-data');
Route::post('import', [SamplingController::class, 'import'])->name('import');

Route::get('/', function () {
    return view('dashboard');
});

// Route::get('/','DashboardController@index');

Route::group(['prefix' => 'basic-ui'], function(){
    Route::get('accordions', function () { return view('pages.basic-ui.accordions'); });
    Route::get('buttons', function () { return view('pages.basic-ui.buttons'); });
    Route::get('badges', function () { return view('pages.basic-ui.badges'); });
    Route::get('breadcrumbs', function () { return view('pages.basic-ui.breadcrumbs'); });
    Route::get('dropdowns', function () { return view('pages.basic-ui.dropdowns'); });
    Route::get('modals', function () { return view('pages.basic-ui.modals'); });
    Route::get('progress-bar', function () { return view('pages.basic-ui.progress-bar'); });
    Route::get('pagination', function () { return view('pages.basic-ui.pagination'); });
    Route::get('tabs', function () { return view('pages.basic-ui.tabs'); });
    Route::get('typography', function () { return view('pages.basic-ui.typography'); });
    Route::get('tooltips', function () { return view('pages.basic-ui.tooltips'); });
});

Route::group(['prefix' => 'advanced-ui'], function(){
    Route::get('dragula', function () { return view('pages.advanced-ui.dragula'); });
    Route::get('clipboard', function () { return view('pages.advanced-ui.clipboard'); });
    Route::get('context-menu', function () { return view('pages.advanced-ui.context-menu'); });
    Route::get('popups', function () { return view('pages.advanced-ui.popups'); });
    Route::get('sliders', function () { return view('pages.advanced-ui.sliders'); });
    Route::get('carousel', function () { return view('pages.advanced-ui.carousel'); });
    Route::get('loaders', function () { return view('pages.advanced-ui.loaders'); });
    Route::get('tree-view', function () { return view('pages.advanced-ui.tree-view'); });
});


Route::group(['prefix' => 'charts'], function(){
    Route::get('chartjs', function () { return view('pages.charts.chartjs'); });
    Route::get('morris', function () { return view('pages.charts.morris'); });
    Route::get('flot', function () { return view('pages.charts.flot'); });
    Route::get('google-charts', function () { return view('pages.charts.google-charts'); });
    Route::get('sparklinejs', function () { return view('pages.charts.sparklinejs'); });
    Route::get('c3-charts', function () { return view('pages.charts.c3-charts'); });
    Route::get('chartist', function () { return view('pages.charts.chartist'); });
    Route::get('justgage', function () { return view('pages.charts.justgage'); });
});

Route::group(['prefix' => 'tables'], function(){
    Route::get('basic-table', function () { return view('pages.tables.basic-table'); });
    Route::get('data-table', function () { return view('pages.tables.data-table'); });
    Route::get('js-grid', function () { return view('pages.tables.js-grid'); });
    Route::get('sortable-table', function () { return view('pages.tables.sortable-table'); });
});

Route::get('notifications', function () {
    return view('pages.notifications.index');
});

Route::group(['prefix' => 'icons'], function(){
    Route::get('material', function () { return view('pages.icons.material'); });
    Route::get('flag-icons', function () { return view('pages.icons.flag-icons'); });
    Route::get('font-awesome', function () { return view('pages.icons.font-awesome'); });
    Route::get('simple-line-icons', function () { return view('pages.icons.simple-line-icons'); });
    Route::get('themify', function () { return view('pages.icons.themify'); });
});

Route::group(['prefix' => 'maps'], function(){
    Route::get('vector-map', function () { return view('pages.maps.vector-map'); });
    Route::get('mapael', function () { return view('pages.maps.mapael'); });
    Route::get('google-maps', function () { return view('pages.maps.google-maps'); });
});

Route::group(['prefix' => 'user-pages'], function(){
    Route::get('login', function () { return view('pages.user-pages.login'); });
    Route::get('login-2', function () { return view('pages.user-pages.login-2'); });
    Route::get('multi-step-login', function () { return view('pages.user-pages.multi-step-login'); });
    Route::get('register', function () { return view('pages.user-pages.register'); });
    Route::get('register-2', function () { return view('pages.user-pages.register-2'); });
    Route::get('lock-screen', function () { return view('pages.user-pages.lock-screen'); });
});

Route::group(['prefix' => 'error-pages'], function(){
    Route::get('error-404', function () { return view('pages.error-pages.error-404'); });
    Route::get('error-500', function () { return view('pages.error-pages.error-500'); });
});

Route::group(['prefix' => 'general-pages'], function(){
    Route::get('blank-page', function () { return view('pages.general-pages.blank-page'); });
    Route::get('landing-page', function () { return view('pages.general-pages.landing-page'); });
    Route::get('profile', function () { return view('pages.general-pages.profile'); });
    Route::get('email-templates', function () { return view('pages.general-pages.email-templates'); });
    Route::get('faq', function () { return view('pages.general-pages.faq'); });
    Route::get('faq-2', function () { return view('pages.general-pages.faq-2'); });
    Route::get('news-grid', function () { return view('pages.general-pages.news-grid'); });
    Route::get('timeline', function () { return view('pages.general-pages.timeline'); });
    Route::get('search-results', function () { return view('pages.general-pages.search-results'); });
    Route::get('portfolio', function () { return view('pages.general-pages.portfolio'); });
    Route::get('user-listing', function () { return view('pages.general-pages.user-listing'); });
});

Route::group(['prefix' => 'ecommerce'], function(){
    Route::get('invoice', function () { return view('pages.ecommerce.invoice'); });
    Route::get('invoice-2', function () { return view('pages.ecommerce.invoice-2'); });
    Route::get('pricing', function () { return view('pages.ecommerce.pricing'); });
    Route::get('product-catalogue', function () { return view('pages.ecommerce.product-catalogue'); });
    Route::get('project-list', function () { return view('pages.ecommerce.project-list'); });
    Route::get('orders', function () { return view('pages.ecommerce.orders'); });
});

// For Clear cache
Route::get('/clear-cache', function() {
    Artisan::call('cache:clear');
    return "Cache is cleared";
});

// 404 for undefined routes
Route::any('/{page?}',function(){
    return View::make('pages.error-pages.error-404');
})->where('page','.*');