<?php

namespace App\Http\Controllers;

use App\Repositories\EventRepositoryImpl;
use Illuminate\Http\Request;

class EventController extends Controller
{
    protected $repository;
    public function __construct(EventRepositoryImpl $repository)
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
}
