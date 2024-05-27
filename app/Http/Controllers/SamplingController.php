<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreRoleRequest;
use App\Http\Requests\UpdateRoleRequest;
use App\Models\Samplings;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Illuminate\View\View;
use Illuminate\Http\RedirectResponse;
use DB;

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
        return view('sampling.upload', [
            'sampling' => Samplings::orderBy('id','DESC')->paginate(10)
        ]);
    }

    /**
     * Display a listing of the resource.
     */
    public function index(): View
    {
        return view('sampling.create', [
            'sampling' => Samplings::orderBy('id','DESC')->paginate(10)
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(): View
    {
        // 
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

}