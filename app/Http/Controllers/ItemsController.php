<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Items;

class ItemsController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index()
    {
        $items = Items::orderBy('id', 'asc')->latest()->paginate(10);
        return view('items.index', compact('items'));
    }
    public function create()
    {
        return view('items.create');
    }

    public function store(Request $request)
    {
        Items::create($request->all());
        return redirect()->route('items.index')->with('success', 'Item created successfully');
    }

    public function show($id)
    {
        $item = Items::find($id);
        return view('items.show', compact('item'));
    }

    public function edit($id)
    {
        $item = Items::find($id);
        return view('items.edit', compact('item'));
    }

    public function update(Request $request, $id)
    {
        $item = Items::find($id);
        $item->update($request->all());
        return redirect()->route('items.index')->with('success', 'Item updated successfully');
    }

    public function destroy($id)
    {
        $item = Items::find($id);
        $item->delete();
        return redirect()->route('items.index')->with('success', 'Item deleted successfully');
    }
}
