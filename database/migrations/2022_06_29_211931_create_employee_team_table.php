<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEmployeeTeamTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('employee_team', function (Blueprint $table) {
            $table->id();

            $table->unsignedInteger('employee_id');
            $table->foreign('employee_id')->references('id')->on('employees');

            $table->unsignedInteger('team_id');
            $table->foreign('team_id')->references('id')->on('teams');

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
        Schema::dropIfExists('employee_team');
    }
}
