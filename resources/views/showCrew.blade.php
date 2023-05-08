@extends('layouts.app')

@section('content')

    <p><a href="/crews">Back</a></p><br>

    <p><strong>First Name:</strong> {{$crew->first_name}} </p>
    <p><strong>Last Name:</strong> {{$crew->last_name}} </p>
    <p><strong>Middle Name:</strong> {{$crew->middle_name}} </p>
    <p><strong>Email:</strong> {{$crew->email}} </p>
    <p><strong>Address:</strong> {{$crew->address}} </p>
    <p><strong>Education:</strong> {{$crew->education}} </p>
    <p><strong>Contact Details:</strong> {{$crew->contact_details}} </p>
@endsection