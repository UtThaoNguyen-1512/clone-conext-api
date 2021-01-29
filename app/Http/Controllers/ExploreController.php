<?php

namespace App\Http\Controllers;

use App\Repositories\ExploreRepositoryImpl;
use Illuminate\Http\Request;

class ExploreController extends Controller
{
    protected $repository;
    public function __construct(ExploreRepositoryImpl $repository)
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
