<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEmployeeDivisionTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('employee_division', function (Blueprint $table) {
            $table->id();

            $table->unsignedInteger('employee_id');
            $table->foreign('employee_id')->references('id')->on('employees');

            $table->unsignedInteger('division_id');
            $table->foreign('division_id')->references('id')->on('divisions');

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
        Schema::dropIfExists('employee_division');
    }
}
