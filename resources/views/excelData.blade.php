<table class="table">
    <thead class="thead-dark">
    <tr>
        <th scope="col">Id</th>
        <th scope="col">Full_name</th>
        <th scope="col">Phone_number</th>
        <th scope="col">Email</th>
    </tr>
    </thead>
    <tbody>
    @foreach($userData as $user)
        <tr>
            <th scope="row">{{$user->id}}</th>
            <td>{{$user->full_name}}</td>
            <td>{{$user->phone_number}}</td>
            <td>{{$user->email}}</td>
        </tr>
    @endforeach
    </tbody>
</table>
