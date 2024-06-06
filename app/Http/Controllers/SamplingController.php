<?php

namespace App\Http\Controllers;

use App\Imports\FirstFileImport;
use App\Imports\SecondFileImport;
use Illuminate\Http\Request;
use App\Http\Requests\StoreRoleRequest;
use App\Http\Requests\UpdateRoleRequest;
use App\Models\Samplings;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Illuminate\View\View;
use Illuminate\Http\RedirectResponse;
use DB;
use Maatwebsite\Excel\Facades\Excel;

class SamplingController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    /**
     * Display an upload form.
     */
    public function upload(): View
    {
        
    }

    /**
     * Display a listing of the resource.
     */
    public function index(): View
    {
        return view('samplings.index', [
            'samplings' => Samplings::orderBy('id', 'DESC')->paginate(10)
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(): View
    {
        return view('samplings.upload', [
            'samplings' => Samplings::orderBy('id', 'DESC')->paginate(10)
        ]); 
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreRoleRequest $request): RedirectResponse
    {
        // 
    }

    /**
     * Display the specified resource.
     */
    public function show(Role $role): View
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Role $role): View
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateRoleRequest $request, Role $role): RedirectResponse
    {
        //
    }

    public function import(Request $request)
    {
        $request->validate([
            'file1' => 'required|file|mimes:xlsx',
            'file2' => 'required|file|mimes:xlsx'
        ]);

        $file1 = Excel::toArray(new FirstFileImport, $request->file('file1'))[0];
        $file2 = Excel::toArray(new SecondFileImport, $request->file('file2'))[0];

        $mergedData = [];

        $mergedArray = [];
        foreach ($file1 as $row) {
            $mergedArray[$row['category']] = $row['item_code'];
        }

        foreach ($file2 as $row) {
            $category = $row['category'];
            $itemCode = $mergedArray[$category] ?? null; // Find the item_code for the given category
        
            if ($itemCode !== null) {
                $mergedData[] = [
                    'category' => $category,
                    'item_code' => $itemCode,
                    'barcode_item' => $row['barcode_item']
                ];
            }
        }
        
        // Insert merged data into the users table
        //User::truncate();

        foreach ($mergedData as $data) {
            Samplings::create($data);
        }
        dd($mergedData);
        //        return back()->with('success', 'Data Imported Successfully');
    }
}