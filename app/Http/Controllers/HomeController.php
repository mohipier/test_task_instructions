<?php

namespace App\Http\Controllers;

use App\Models\Division;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Index Show all Situations.
     *
     */
    public function index()
    {   
        $divisions = Division::with('department.team.employee', 'department.employee')->orderBy('id', 'asc')->get();

        return view('welcome', ['divisions' => $divisions]);
    }
}
