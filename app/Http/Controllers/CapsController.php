<?php

namespace App\Http\Controllers;

use App\Models\Caps;
use App\Models\CapsScarecity;
use Illuminate\Http\Request;

class CapsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('capsules', [
            'caps' => Caps::all(),
            'capsScarecity' => CapsScarecity::all()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Caps  $caps
     * @return \Illuminate\Http\Response
     */
    public function show(Caps $caps)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Caps  $caps
     * @return \Illuminate\Http\Response
     */
    public function edit(Caps $caps)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Caps  $caps
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Caps $caps)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Caps  $caps
     * @return \Illuminate\Http\Response
     */
    public function destroy(Caps $caps)
    {
        //
    }
}
