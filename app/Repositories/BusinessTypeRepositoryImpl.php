<?php

namespace App\Repositories;

use App\Repositories\RepositoryInterface;
use App\Models\BusinessType;

class BusinessTypeRepositoryImpl implements RepositoryInterface{

   function getAll()
   {
      return BusinessType::all();
   }

   function create()
   {
   }

   function edit($id)
   {
   }

   function delete($id)
   {
   }

   function findById($id)
   {
   }
}