<?php

namespace App\Http\Controllers;

use App\Models\Crews;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class CrewsController extends Controller
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
        $crews = Crews::paginate(10);

        return view('crews')->with("crews", $crews);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('addCrewForm');
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
            'first_name' => 'required',
            'last_name' => 'required',
            'email' => 'email:rfc,dns'
        ]);

        if($validator->fails()){
            return back()->withErrors($validator)->withInput();
        }

        Crews::create([
            "first_name" => $request->first_name,
            "last_name" => $request->last_name,
            "middle_name" => $request->middle_name,
            "email" => $request->email,
            "address" => $request->address,
            "education" => $request->education,
            "contact_details" => $request->contact_details,
        ]);

        return redirect("crews")->with("message", "Crew Successfully Added");
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Crews  $crews
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $crew = Crews::find($id);

        return view('showCrew')->with("crew", $crew);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Crews  $crews
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $crew = Crews::find($id);
        return view('editCrewForm')->with("crew", $crew);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Crews  $crews
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $crew = Crews::find($id);
        $crew->first_name = $request->first_name;
        $crew->last_name = $request->last_name;
        $crew->middle_name = $request->middle_name;
        $crew->email = $request->email;
        $crew->address = $request->address;
        $crew->education = $request->education;
        $crew->contact_details = $request->contact_details;
        $crew->save();

        return redirect("crews")->with("message", "Crew Successfully Updated");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Crews  $crews
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Crews::destroy($id);

        return redirect("crews")->with("message", "Crew Successfully Deleted");
    }
}
