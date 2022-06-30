<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    use HasFactory;

    public function division()
    {
        return $this->belongsToMany(Division::class, 'employee_division' , 'employee_id' , 'division_id')
                    ->orderBy('employee_type', 'asc')->withPivot('employee_type');
    }

    public function department()
    {
        return $this->belongsToMany(Department::class, 'employee_department' , 'employee_id' , 'department_id')
                    ->orderBy('employee_type', 'asc')->withPivot('employee_type');
    }

    public function team()
    {
        return $this->belongsToMany(Team::class, 'employee_team' , 'team_id' , 'employee_id')
                    ->orderBy('employee_type', 'asc')->withPivot('employee_type');
    }
}
