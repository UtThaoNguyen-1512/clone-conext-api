<?php

namespace App\Repositories;

use App\Models\Place;
use App\Repositories\RepositoryInterface;

class PlaceRepositoryImpl implements RepositoryInterface {

   function getAll(){
      return Place::all();
   }

   function create(){

   }

   function edit($id){

   }

   function delete($id){

   }

   function findById($id){

   }
}