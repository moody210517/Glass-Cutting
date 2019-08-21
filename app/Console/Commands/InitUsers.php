<?php

namespace App\Console\Commands;

use App\Baron;
use App\User;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\Hash;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class InitUsers extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'init:users';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Init `users`, `barons`, permissions and roles';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        //
        if (env('APP_ENV') != 'production') {
//            Schema::drop('users');
//            Schema::create('users', function (Blueprint $table) {
//                $table->bigIncrements('id');
//                $table->string('name');
//                $table->string('email')->unique();
//                $table->timestamp('email_verified_at')->nullable();
//                $table->string('password');
//                $table->rememberToken();
//                $table->timestamps();
//            });

            $permissionArray = array(
                'modify-order',
                'create-order',
                'depot-manage',
                'record-receipt',
                'add-stock',
                'change-stock',
            );

            // Create permissions
            $modifyOrderPermission      = Permission::create(['name' => 'modify-order']);
            $createOrderPermission      = Permission::create(['name' => 'create-order']);
            $depotManagePermission      = Permission::create(['name' => 'depot-manage']);
            $recordReceiptPermission    = Permission::create(['name' => 'record-receipt']);
            $addStockPermission         = Permission::create(['name' => 'add-stock']);
            $changeStockPermission      = Permission::create(['name' => 'change-stock']);
            $countStockPermission       = Permission::create(['name' => 'count-stock']);
            // End Create permissions

            // Create Roles
            $adminRole       = Role::create(['name' => 'admin']);
            $depotRole       = Role::create(['name' => 'depot']);
            $salesPersonRole = Role::create(['name' => 'sales-person']);
            // End Create Roles

            // Assign permissions to roles
            $adminRole->givePermissionTo($modifyOrderPermission);
            $adminRole->givePermissionTo($createOrderPermission);
            $adminRole->givePermissionTo($depotManagePermission);
            $adminRole->givePermissionTo($recordReceiptPermission);
            $adminRole->givePermissionTo($addStockPermission);
            $adminRole->givePermissionTo($changeStockPermission);
            $adminRole->givePermissionTo($countStockPermission);

            $depotRole->givePermissionTo($depotManagePermission);

            $salesPersonRole->givePermissionTo($modifyOrderPermission);
            $salesPersonRole->givePermissionTo($createOrderPermission);
            // End Assign permissions to roles

            // First Baron
            $baron = new Baron();
            $baron->name = 'Baron 1';
            $baron->save();
            // End first baron

            // User handle
            $admin = new User();
            $admin->password = Hash::make('admin');
            $admin->email = 'admin@example.com';
            $admin->name = 'admin';
            $admin->save();
            $admin->assignRole('admin');

            $depotManager = new User();
            $depotManager->password = Hash::make('depotmanager');
            $depotManager->email = 'depotmanager@example.com';
            $depotManager->name = 'depotmanager';
            $depotManager->baron_id = $baron->id;
            $depotManager->save();
            $depotManager->assignRole($depotRole);

            $worker = new User();
            $worker->password = Hash::make('worker');
            $worker->email = 'worker@example.com';
            $worker->name = 'worker';
            $worker->baron_id = $baron->id;
            $worker->save();
            $worker->assignRole($salesPersonRole);
        }
    }
}
