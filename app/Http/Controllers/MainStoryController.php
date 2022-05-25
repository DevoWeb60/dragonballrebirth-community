<?php

namespace App\Http\Controllers;

use App\Models\MainStory;
use Illuminate\Http\Request;

class MainStoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('adventureMode.index', [
            'mainStories' => MainStory::all()
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
     * @param  \App\Models\MainStory  $mainStory
     * @return \Illuminate\Http\Response
     */
    public function show(MainStory $mainStory)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\MainStory  $mainStory
     * @return \Illuminate\Http\Response
     */
    public function edit(MainStory $mainStory)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\MainStory  $mainStory
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, MainStory $mainStory)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\MainStory  $mainStory
     * @return \Illuminate\Http\Response
     */
    public function destroy(MainStory $mainStory)
    {
        //
    }
}
