<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=2,shrink-to-fit=no,user-scalable=0,viewport-fit=cover">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Coding Test</title>
    <link rel="stylesheet" href="layout/css/libs/bootstrap.min.css">
    <link rel="stylesheet" href="layout/css/main.min.css">
</head>

<body class="bg-light">
    <div class="page">
        <main class="page-main">
            <div class="manage-budget">
                <div class="table-budget">
                    <table class="w-100">
                        <tbody>
                            @foreach ($divisions as $division)
                            <!-- start division-->
                            <tr>
                                <td class="division show">
                                    <div class="company">
                                        <form>Division
                                            <input type="text" value="{{ $division->name }}" readonly="">
                                        </form>
                                    </div>
                                </td>
                                @foreach ($division->employee as $division_employee)
                                @if($division_employee->pivot->employee_type === 'leader')
                                <td class="department admin">
                                    <div class="company">
                                        <form>
                                            <p>{{ $division_employee->firstName }} {{ $division_employee->lastName }}</p><span>&nbsp; Division Lead</span>
                                        </form>
                                    </div>
                                </td>
                                @else
                                <td class="department show">
                                    <div class="company">
                                        <form>Division Employee
                                            <input type="text" value="{{ $division_employee->firstName }} {{ $division_employee->lastName }}" readonly>
                                        </form>
                                    </div>
                                </td>
                                @endif
                                @endforeach

                                @foreach ($division->department as $division_department)
                                <!-- start department-->
                                <td class="department show">
                                    <div class="company">
                                        <form>Department
                                            <input type="text" value="{{ $division_department->name }}" readonly>
                                        </form>
                                    </div>
                                </td>
                                <!-- end department-->
                                <!-- start teams-->
                                <td class="teams show">
                                    @foreach ($division_department->employee as $department_employee)
                                    @if($department_employee->pivot->employee_type == 'leader')
                                    <div class="team admin">
                                        <div class="company">
                                            <form>
                                                <p>{{ $department_employee->firstName }} {{ $department_employee->lastName }}</p><span>&nbsp; Department Lead</span>
                                            </form>
                                        </div>
                                    </div>
                                    @else
                                    <div class="team show">
                                        <div class="company">
                                            <form>Department Employee
                                                <input type="text" value="{{ $department_employee->firstName }} {{ $department_employee->lastName }}" readonly>
                                            </form>
                                        </div>
                                    </div>
                                    @endif
                                    @endforeach

                                    @foreach ($division_department->team as $department_team)
                                    <div class="team show">
                                        <div class="company">
                                            <form>Team
                                                <input type="text" value="{{ $department_team->name }}" readonly>
                                            </form>
                                        </div>
                                    </div>
                                        @foreach ($department_team->employee as $team_employee)
                                            @if($team_employee->pivot->employee_type == 'leader')
                                            <div class="team show">
                                                <div class="company">
                                                    <form>

                                                        <p>{{ $team_employee->firstName }} {{ $team_employee->lastName }}</p><span>&nbsp; Team Lead</span>

                                                    </form>
                                                </div>
                                            </div>
                                            @else
                                            <div class="team show">
                                                <div class="company">
                                                    <form>Team Employee
                                                        <input type="text" value="{{ $team_employee->firstName }} {{ $team_employee->lastName }}" readonly>
                                                    </form>
                                                </div>
                                            </div>
                                            @endif
                                        @endforeach
                                    @endforeach
                                </td>
                                @endforeach
                                <!-- end teams-->
                            </tr>
                            <!-- end division-->
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </main>
    </div>
</body>

</html>