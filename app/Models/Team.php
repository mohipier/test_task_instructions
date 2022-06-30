<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Team extends Model
{
    use HasFactory;

    public function employee()
    {
        return $this->belongsToMany(Employee::class, 'employee_team' , 'team_id' , 'employee_id')
                    ->orderBy('employee_type', 'asc')->withPivot('employee_type');
    }

    public function department()
    {
        return $this->belongsTo(Department::class , 'department_id' , 'id');
    }
}
