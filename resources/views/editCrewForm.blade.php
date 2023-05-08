@extends('layouts.app')

@section('content')

    <p><a href="/crews">Back</a></p>

    <form action="/crews/{{ $crew->id }}" method="POST">
        @csrf
        @method('PUT')

        First Name: <input type="text" name="first_name" value="{{ $crew->first_name }}"><br>
        Last Name: <input type="text" name="last_name" value="{{ $crew->last_name }}"><br>
        Middle Name: <input type="text" name="middle_name" value="{{ $crew->middle_name }}"><br>
        Email: <input type="text" name="email" value="{{ $crew->email }}"><br>
        Address: <input type="text" name="address" value="{{ $crew->address }}"><br>
        Education: <input type="text" name="education" value="{{ $crew->education }}"><br>
        contact details <input type="number" name="contact_details" value="{{ $crew->contact_details }}"><br>
        <input type="submit">
        
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