<?php

use Illuminate\Database\Seeder;
use App\User;
use Illuminate\Support\Facades\Hash;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
      User::create([
      	'name' => 'user',
      	'email' => 'user@mail.com',
      	'password' => Hash::make('password')
      ]);
    }
}
