<?php

namespace App\Repositories;

use App\Repositories\RepositoryInterface;
use App\Models\Voucher;

class VoucherRepositoryImpl implements RepositoryInterface
{
   function getAll()
   {
      return Voucher::all();
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
