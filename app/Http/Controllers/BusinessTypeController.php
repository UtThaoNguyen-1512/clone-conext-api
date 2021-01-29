<?php

namespace App\Http\Controllers;

use App\Repositories\BusinessTypeRepositoryImpl;
use Illuminate\Http\Request;


class BusinessTypeController extends Controller
{
    protected $repository;
    public function __construct(BusinessTypeRepositoryImpl $repository)
    {
        $this->repository = $repository;
    }

    public function index()
    {
        return response()->json(
            $this->repository->getAll(), 200
        );
    }

}
