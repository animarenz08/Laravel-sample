@extends('layouts.app')

@section('content')

    <p><a href="/home">Back</a></p>

    <form action="/crews" method="POST">
        @csrf
        <div>
        First Name: <input type="text" name="first_name"><br>
        Last Name: <input type="text" name="last_name"><br>
        Middle Name: <input type="text" name="middle_name"><br>
        Email: <input type="text" name="email"><br>
        Address: <input type="text" name="address"><br>
        Education: <input type="text" name="education"><br>
        contact details <input type="number" name="contact_details"><br>
        <input type="submit">
        </div>
    </form>

    @if ($errors->any())
        <div>
            <strong>Whoops!</strong> There were some problems with your input.<br><br>
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
    
@endsection