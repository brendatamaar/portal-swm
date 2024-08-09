<?php

namespace App\Http\Controllers;

use App\Models\FormTrs;
use App\Models\Items;
use App\Models\ItemTrs;
use App\Models\Trs;
use App\Models\Stores;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class FormTrController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        return view('form_trs.index', [
            'form_trs' => FormTrs::orderBy('id', 'DESC')->paginate(10)
        ]);
    }

    public function create()
    {
        $stores = Stores::all();
        return view('form_trs.create_1', [
            'stores' => $stores
        ]);
    }
    public function create_2(Request $request)
    {
        $id = $request->query('id');
        $form_trs = FormTrs::find($id);
        $items = Items::all();
        return view('form_trs.create_2', [
            'items' => $items,
            'form_trs' => $form_trs
        ]);
    }
    public function store(Request $request)
    {

        $form_trs = FormTrs::create([
            'no_document' => $request->no_document,
            'no_receipt' => $request->no_receipt,
            'transfer_from' => $request->transfer_from,
            'transfer_to' => $request->transfer_to,
            'created_by' => Auth::id(),
            'status_form' => 'Created',
        ]);

        return redirect()->route('form_trs.create_2', ['id' => $form_trs->id])->with('success', 'Form created successfully.');
    }

    public function store_2(Request $request)
    {

        $form_id = $request->input('form_id');
        $form_trs = $request->input('form_trs');

        foreach ($form_trs as $form_tr) {
            $note_penjualan = $form_tr['note_penjualan'];
            $promise_date = $form_tr['promise_date'];
            $items = $form_tr['items'];

            $trs_id = Trs::create([
                'form_id' => $form_id,
                'nota_penjualan' => $note_penjualan,
                'promise_date' => $promise_date
            ]);

            foreach ($items as $item) {
                $item_no = $item['item_no'];
                $item_desc = $item['item_desc'];
                $item_code = $item['item_code'];
                $uom = $item['uom'];
                $qty = $item['qty'];

                ItemTrs::create([
                    'tr_id' => $trs_id->id,
                    'item_no' => $item_no,
                    'item_desc' => $item_desc,
                    'item_code' => $item_code,
                    'uom' => $uom,
                    'qty' => $qty
                ]);
            }
        }

        return redirect()->route('form_trs.index')->with('success', 'Form TR created successfully.');
    }

    public function show($id)
    {
        $form_trs = FormTrs::with('trs.item_trs')->find($id);
        return view('form_trs.show', compact('form_trs'));
    }

    public function edit($id)
    {
        $form_trs = FormTrs::find($id);
        return view('form_trs.edit', compact('form_trs'));
    }

    public function update(Request $request, $id)
    {
        $form_trs = FormTrs::find($id);
        $form_trs->update($request->all());
        return redirect()->route('form_trs.index')->with('success', 'Form updated successfully');
    }

    public function destroy($id)
    {
        $form_trs = FormTrs::find($id);
        $form_trs->delete();
        return redirect()->route('form_trs.index')->with('success', 'Form deleted successfully');
    }

    public function approve($id)
    {
        $form_trs = FormTrs::find($id);
        $form_trs->update(['status_form' => 'Approve', 'approved_by' => Auth::id()]);
        return redirect()->route('form_trs.index')->with('success', 'Form TR approved successfully');
    }
}
