<!DOCTYPE html>
<html>
<head>
    <style>
        .button {
            background-color: #04AA6D;
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
        }

        .buttonn {
            background-color: #04AA6D;
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            right: 4px;
        }
        #customers {
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        #customers td, #customers th {
            border: 1px solid #ddd;
            padding: 8px;
        }

        #customers tr:nth-child(even){background-color: #f2f2f2;}

        #customers tr:hover {background-color: #ddd;}

        #customers th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #04AA6D;
            color: white;
        }
    </style>
</head>
<body>

<a href="{{route('userExcelData')}}" onclick="myFunction()" class="button">Data Excel</a>

<a href="{{route('selectExcelData')}}"  class="buttonn">import Excel</a>


<table id="customers">
    <tr>
        <th>ID</th>
        <th>FULL_NAME</th>
        <th>PHONE_NUMBER</th>
        <th>EMAiL</th>
    </tr>

    @foreach($userData as $user)
        <tr>
            <td> {{$user->id}}</td>
            <td> {{$user->full_name}}</td>
            <td>{{$user->phone_number}}</td>
            <td>{{$user->email}}</td>
        </tr>
    @endforeach

</table>
<script>
    function myFunction() {
        alert('please click ok to download the excel');
    }
</script>
</body>
</html>
