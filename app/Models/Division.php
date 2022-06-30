<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Division extends Model
{
    use HasFactory;

    public function employee()
    {
        return $this->belongsToMany(Employee::class, 'employee_division' , 'division_id' , 'employee_id')
                    ->orderBy('employee_type', 'asc')->withPivot('employee_type');
    }

    public function department()
    {
        return $this->hasMany(Department::class, 'division_id' , 'id');
    }

}
