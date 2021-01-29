<?php

namespace App\Http\Controllers;

use App\Repositories\ExpertiseRepositoryImpl;
use Illuminate\Http\Request;

class ExpertiseCotroller extends Controller
{
    protected $repository;
    public function __construct(ExpertiseRepositoryImpl $repository)
    {
        $this->repository = $repository;
    }

    public function index()
    {
        return response()->json(
            $this->repository->getAll(),
            200
        );
    }


    public function create()
    {
        //
    }


    public function store(Request $request)
    {
        //
    }


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
