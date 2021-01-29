<?php

namespace App\Repositories;

use App\Repositories\RepositoryInterface;
use App\Models\Expertise;

class ExpertiseRepositoryImpl implements RepositoryInterface
{
   function getAll()
   {
      return Expertise::all();
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
