<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Repositories\PlaceRepositoryImpl;

class PlaceController extends Controller
{
    protected $repository;
    public function __construct(PlaceRepositoryImpl $repository)
    {
        $this->repository = $repository;
    }

    public function index()
    {
        return response() -> json(
            $this->repository->getAll(), 200
        );
    }

    public function create()
    {
        //
    }

    // public function store(Request $request)
    // {
    //     return response() -> json("Saved!", 201);
    // }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        //
    }

    public function update(Request $request, $id)
    {
        //
    }

    public function destroy($id)
    {
        //
    }
}
