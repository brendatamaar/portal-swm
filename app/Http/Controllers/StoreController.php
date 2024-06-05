<?php

namespace App\Http\Controllers;

use App\Http\Requests\UpdateStoreRequest;
use App\Models\Stores;
use Illuminate\Http\Request;
use Illuminate\View\View;
use Illuminate\Http\RedirectResponse;

class StoreController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('permission:create-store|edit-store|delete-store', ['only' => ['index', 'show']]);
        $this->middleware('permission:create-store', ['only' => ['create', 'store']]);
        $this->middleware('permission:edit-store', ['only' => ['edit', 'update']]);
        $this->middleware('permission:delete-store', ['only' => ['destroy']]);
    }
    /**
     * Display a listing of the resource.
     *
     */
    public function index()
    {
        return view('stores.index', [
            'stores' => Stores::orderBy('site_id')->paginate(10)
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     */
    public function create()
    {
        return view('stores.create', [
            'stores' => Stores::pluck('name')->all()
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $input = $request->all();

        Stores::create($input);

        return redirect()->route('stores.index')
            ->withSuccess('New store is added successfully.');
    }

    /**
     * Display the specified resource.
     *
     */
    public function show(Stores $store): View
    {
        return view('stores.show', [
            'store' => $store
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     */
    public function edit(Stores $store): View
    {
        return view('stores.edit', [
            'store' => $store
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     */
    public function update(UpdateStoreRequest $request, Stores $store)
    {
        $input = $request->all();

        $store->update($input);

        return redirect()->back()
            ->withSuccess('Store is updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     *
     */
    public function destroy(Stores $store): RedirectResponse
    {
        $store->delete();
        return redirect()->route('stores.index')
            ->withSuccess('Store is deleted successfully.');
    }
}
