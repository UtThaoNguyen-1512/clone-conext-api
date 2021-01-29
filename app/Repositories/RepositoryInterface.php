<?php

namespace App\Repositories;

interface RepositoryInterface
{

   public function getAll();

   public function create();

   public function edit($id);

   public function delete($id);

   public function findById($id);
}