<?php

use Illuminate\Database\Seeder;
use App\User;
class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
    	$admin = new User();
    	$admin->name="admin";
    	$admin->email="admin123@gmail.com";
    	$admin->password =  bcrypt('password');
    	$admin->visible_password ="password";
    	$admin->email_verified_at = NOW();
    	$admin->occupation="CEO";
    	$admin->address="Australia";
    	$admin->phone="03453494";
    	$admin->is_admin=1;
    	$admin->save();

    }
}
