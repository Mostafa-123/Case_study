<table class="table">
    <thead class="thead-dark">
    <tr>
        @if(in_array('id', $columns))
            <th scope="col">id</th>
        @endif
        @if(in_array('full_name', $columns))
            <th scope="col">full_name</th>
        @endif
        @if(in_array('phone_number', $columns))
            <th scope="col">phone_number</th>
        @endif
        @if(in_array('email', $columns))
            <th scope="col">email</th>
        @endif
    </tr>
    </thead>
    <tbody>
    @foreach($userData as $user)
        <tr>
            @if(in_array('id', $columns))
                <td scope="row"> {{$user->id}}</td>
            @endif
            @if(in_array('full_name', $columns))
                <td> {{$user->full_name}}</td>
            @endif
            @if(in_array('phone_number', $columns))
                <td>{{$user->phone_number}}</td>
            @endif
            @if(in_array('email', $columns))
                <td>{{$user->email}}</td>
            @endif
        </tr>
    @endforeach
    </tbody>
</table>
