@extends('layouts.app')

@section('content')

    <p><a href="/documents">Back</a></p><br>

    <p>Code: {{$document->code}} </p>
    <p>Name: {{$document->name}} </p>
    <p>Document Number: {{$document->document_number}} </p>
    <p>date Issued: {{$document->date_issued}} </p>
    <p>date Expiry: {{$document->date_expiry}} </p>
    <p>Remakrs: {{$document->remarks}} </p>
@endsection