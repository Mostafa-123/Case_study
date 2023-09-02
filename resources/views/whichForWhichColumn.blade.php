
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>File Upload Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #0b8457;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        label {
            font-weight: bold;
            margin-bottom: 10px;
            color: #0b8457;
        }
        .checkbox-container {
            display: flex;
            align-items: center;
        }

        input[type="checkbox"] {
            appearance: none;
            -webkit-appearance: none;
            -moz-appearance: none;
            width: 20px;
            height: 20px;
            border: 1px solid #ccc;
            border-radius: 3px;
            background-color: #fff;
            cursor: pointer;
            margin-right: 5px;
            margin-left: 5px;
        }

        input[type="checkbox"]:checked {
            background-color: #04AA6D;
            border: 1px solid #04AA6D;
            color: #fff;
        }

        button {
            padding: 10px 20px;
            background-color: #04AA6D;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #04AA6D;
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
        select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #fff;
            font-size: 16px;
            color: #0b8457;
            cursor: pointer;
            margin: 5px;

        }
    </style>
</head>
</head>
<body>
<div class="container">
    <h2>Please Select The Data In Your Excel That You Want To Save It In Which Data In Database</h2>
    <form action="{{ route('importExcelData',['file'=>$file]) }}" method="post">
        @csrf
        <label>select which column that you want to save in this columns :</label><br>
        <div class="checkbox-container">
            <label for="full_name" >Full Name</label>
            <select name="full_name" id="full_name">
                <option value="" disabled selected>Select Excel Column</option>
                @foreach ($header as $excelColumn)
                    @if($excelColumn=='Id')
                    @else
                        <option value="{{ $excelColumn }}">{{ $excelColumn }}</option>
                    @endif
                @endforeach
            </select>
        </div>

        <div class="checkbox-container">
            <label for="phone_number">Phone Number</label>
            <select name="phone_number" id="phone_number">
                <option value="" disabled selected>Select Excel Column</option>
                @foreach ($header as $excelColumn)
                    @if($excelColumn=='Id')
                    @else
                        <option value="{{ $excelColumn }}">{{ $excelColumn }}</option>
                    @endif
                @endforeach
            </select>
        </div>

        <div class="checkbox-container">
            <label for="email">Email</label>
            <select name="email" id="email">
                <option value="" disabled selected>Select Excel Column</option>
                @foreach ($header as $excelColumn)
                    @if($excelColumn=='Id')
                    @else
                        <option value="{{ $excelColumn }}">{{ $excelColumn }}</option>
                    @endif
                @endforeach
            </select>
        </div>

        <button type="submit" onclick="myFunction()">Import Data</button>
    </form>
</div>
<h2>Your Data From Your Excel</h2>
<table id="customers">
    <tr>
        @foreach ($header as $excelColumn)
        <th>{{ $excelColumn }}</th>
        @endforeach
    </tr>

    @foreach($data as $user)
        <tr>
            <td> {{$user[0]}}</td>
            <td> {{$user[1]}}</td>
            <td>{{$user[2]}}</td>
            <td>{{$user[3]}}</td>
        </tr>
    @endforeach

</table>
<script>
    function myFunction() {
        alert('are you sure');
    }
</script>
</body>
</html>
