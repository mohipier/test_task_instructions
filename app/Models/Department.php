<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Department extends Model
{
    use HasFactory;

    public function employee()
    {
        return $this->belongsToMany(Employee::class, 'employee_department' , 'department_id' , 'employee_id')
                    ->orderBy('employee_type', 'asc')->withPivot('employee_type');
    }

    public function division()
    {
        return $this->belongsTo(Division::class , 'division_id' , 'id');
    }

    public function team()
    {
        return $this->hasMany(Team::class, 'department_id' , 'id');
    }

    
}
