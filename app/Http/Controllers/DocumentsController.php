<?php

namespace App\Http\Controllers;

use App\Models\Documents;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class DocumentsController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $documents = Documents::paginate(10);

        return view('documents')->with("documents", $documents);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('addDocumentForm');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'code' => 'required',
            'name' => 'required',
            'document_number' => 'required|unique:documents'
        ]);

        if($validator->fails()){
            return back()->withErrors($validator)->withInput();
        }

        Documents::create([
            "code" => $request->code,
            "name" => $request->name,
            "document_number" => $request->document_number,
            "date_issued" => $request->date_issued,
            "date_expiry" => $request->date_expiry,
            "remarks" => $request->remarks
        ]);

        return redirect("documents")->with("message", "Document Successfully Added");
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Documents  $documents
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $document = Documents::find($id);

        return view('showDocument')->with("document", $document);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Documents  $documents
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $document = Documents::find($id);
        return view('editDocumentForm')->with("document", $document);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Documents  $documents
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $document = Documents::find($id);
        $document->code = $request->code;
        $document->name = $request->name;
        $document->document_number = $request->document_number;
        $document->date_issued = $request->date_issued;
        $document->date_expiry = $request->date_expiry;
        $document->remarks = $request->remarks;
        $document->save();

        return redirect("documents")->with("message", "Document Successfully Updated");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Documents  $documents
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Documents::destroy($id);

        return redirect("documents")->with("message", "Document Successfully deleted");
    }
}
