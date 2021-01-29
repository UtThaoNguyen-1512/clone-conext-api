<?php

namespace App\Http\Controllers;

use App\Repositories\WorkPlaceRepositoryImpl;
use Illuminate\Http\Request;

class WorkPlaceController extends Controller
{
    protected $repository;
    public function __construct(WorkPlaceRepositoryImpl $repository)
    {
        $this->repository = $repository;
    }

    public function index()
    {
        return response()->json(
            $this->repository->getAll(),
            200
        );
        // return "ok";
    }
}
