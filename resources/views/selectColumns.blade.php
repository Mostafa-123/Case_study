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

        h1 {
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
    </style>
</head>
<body>
<div class="container">
    <h1>Please Select The Data You Want To Export It</h1>
    <form action="{{ route('userExcelData') }}" method="GET">
        @csrf
        <label>Select columns to export:</label><br>

        <!-- Checkbox with Label -->
        <div class="checkbox-container">
            <input type="checkbox" id="id" name="columns[]" value="id" >
            <label for="id">ID</label>
        </div>

        <div class="checkbox-container">
            <input type="checkbox" id="full_name" name="columns[]" value="full_name" >
            <label for="full_name">Full Name</label>
        </div>

        <div class="checkbox-container">
            <input type="checkbox" id="phone_number" name="columns[]" value="phone_number" >
            <label for="phone_number">Phone Number</label>
        </div>

        <div class="checkbox-container">
            <input type="checkbox" id="email" name="columns[]" value="email" >
            <label for="email">Email</label>
        </div>

        <button type="submit" onclick="myFunction()">Export Data</button>
    </form>
</div>
<script>
    function myFunction() {
        alert('now you will download the excel data to your device ');
    }
</script>
</body>
</html>
