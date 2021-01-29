<?php

namespace App\Repositories;

use App\Repositories\RepositoryInterface;
use App\Models\Explore;

class ExploreRepositoryImpl implements RepositoryInterface{
   function getAll()
   {
      return Explore::all();
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