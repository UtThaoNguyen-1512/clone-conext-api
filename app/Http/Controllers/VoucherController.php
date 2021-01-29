<?php

namespace App\Http\Controllers;

use App\Repositories\VoucherRepositoryImpl;
use Illuminate\Http\Request;

class VoucherController extends Controller
{
    protected $repository;
    public function __construct(VoucherRepositoryImpl $repository)
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
