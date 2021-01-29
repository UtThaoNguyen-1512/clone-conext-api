<?php

namespace App\Repositories;

use App\Repositories\RepositoryInterface;
use App\Models\Event;

class EventRepositoryImpl implements RepositoryInterface
{
   function getAll()
   {
      return Event::all();
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
