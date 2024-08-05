<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\StoreController;
use App\Http\Controllers\CycleCountController;
use App\Http\Controllers\SamplingController;
use App\Http\Controllers\MutasiTagBinController;
use App\Http\Controllers\MutasiCWController;
use App\Http\Controllers\MutasiDController;
use App\Http\Controllers\CrystalReportController;
use App\Http\Controllers\VideoController;
use App\Http\Controllers\FaqController;
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

Route::get('stores/mapping', [StoreController::class, 'indexMapping'])->name('stores.mapping');
Route::post('stores/update-mapping', [StoreController::class, 'updateMapping'])->name('stores.update-mapping');

Route::post('import-excel-mutasi-tagbin', [MutasiTagBinController::class, 'importExcel']);
Route::get('download-template-mutasi-tagbin', [MutasiTagBinController::class, 'downloadImportTemplate']);
Route::get('delete-all-mutasi-tagbin', [MutasiTagBinController::class, 'deleteAll']);
Route::get('generate-barcode-mutasi-tagbin', [MutasiTagBinController::class, 'cetakBarcode'])->name('mutasi-tagbin.cetak_barcode');
Route::get('generate-qr-mutasi-tagbin', [MutasiTagBinController::class, 'cetakQR'])->name('mutasi-tagbin.cetak_qr');

Route::post('import-excel-mutasi-cw', [MutasiCWController::class, 'importExcel']);
Route::get('download-template-mutasi-cw', [MutasiCWController::class, 'downloadImportTemplate']);
Route::get('delete-all-mutasi-cw', [MutasiCWController::class, 'deleteAll']);
Route::get('generate-barcode-mutasi-cw', [MutasiCWController::class, 'cetakBarcode'])->name('mutasi-cw.cetak_barcode');
Route::get('generate-qr-mutasi-cw', [MutasiCWController::class, 'cetakQR'])->name('mutasi-cw.cetak_qr');

Route::post('import-excel-mutasi-d', [MutasiDController::class, 'importExcel']);
Route::get('download-template-mutasi-d', [MutasiDController::class, 'downloadImportTemplate']);
Route::get('delete-all-mutasi-d', [MutasiDController::class, 'deleteAll']);
Route::get('generate-barcode-mutasi-d', [MutasiDController::class, 'cetakBarcode'])->name('mutasi-d.cetak_barcode');
Route::get('generate-qr-mutasi-d', [MutasiDController::class, 'cetakQR'])->name('mutasi-d.cetak_qr');

Route::post('import-excel-crystal-report', [CrystalReportController::class, 'importExcel']);
Route::get('download-template-crystal-report', [CrystalReportController::class, 'downloadImportTemplate']);
Route::get('delete-all-crystal-report', [CrystalReportController::class, 'deleteAll']);
Route::get('generate-barcode-crystal-report', [CrystalReportController::class, 'cetakBarcode'])->name('crystal-report.cetak_barcode');
Route::get('generate-qr-crystal-report', [CrystalReportController::class, 'cetakQR'])->name('crystal-report.cetak_qr');

Route::resources([
    'roles' => RoleController::class,
    'users' => UserController::class,
    'stores' => StoreController::class,
    'samplings' => SamplingController::class,
    'cycle_counts' => CycleCountController::class,
    'profile' => ProfileController::class,
    'mutasi_tag_bins' => MutasiTagBinController::class,
    'mutasi_cws' => MutasiCWController::class,
    'mutasi_ds' => MutasiDController::class,
    'crystal_reports' => CrystalReportController::class,
    'videos'=> VideoController::class,
    'faqs'=> FaqController::class
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