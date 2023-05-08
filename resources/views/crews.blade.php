@extends('layouts.app')

@section('content')

    <table>
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Middle Name</th>
            <th>Email</th>
            <th>Action</th>
        </tr>

        <h1>Crews</h1>

        @if(session("message"))
            <p><strong>{{ session("message") }}</strong></p><br>
        @endif

        <a href="/crews/create">Add New</a>
        @foreach($crews as $crew)
        <tr>
            <td> {{$crew->first_name}} </td>
            <td> {{$crew->last_name}} </td>
            <td> {{$crew->middle_name}} </td>
            <td> {{$crew->email}} </td>
            <td>
                <a href="/crews/{{$crew->id}}">View</a> |
                <a href="/crews/{{$crew->id}}/edit">Edit</a> |
                <form action="crews/{{$crew->id}}" method="POST">
                    @csrf
                    @method("DELETE")
                    <input type="submit" value="Delete">
                </form>
            </td>
        </tr>
        @endforeach
    </table>

    {{$crews->links()}}
@endsection