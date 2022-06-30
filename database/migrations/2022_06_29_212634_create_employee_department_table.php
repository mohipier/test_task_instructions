<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEmployeeDepartmentTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('employee_department', function (Blueprint $table) {
            $table->id();

            $table->unsignedInteger('employee_id');
            $table->foreign('employee_id')->references('id')->on('employees');

            $table->unsignedInteger('department_id');
            $table->foreign('department_id')->references('id')->on('departments');

            $table->enum('employee_type', ['leader', 'normal']);
            
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('employee_department');
    }
}
