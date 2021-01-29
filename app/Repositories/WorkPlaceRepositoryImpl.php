<?php

namespace App\Repositories;

use App\Repositories\RepositoryInterface;
use App\Models\WorkPlace;

class WorkPlaceRepositoryImpl implements RepositoryInterface
{
   function getAll()
   {
      return WorkPlace::all();
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
