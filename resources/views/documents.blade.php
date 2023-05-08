@extends('layouts.app')

@section('content')

    <table>
        <tr>
            <th>Code</th>
            <th>Name</th>
            <th>Document Number</th>
            <th>Date Issued</th>
            <th>Date Expiry</th>
            <th>Remarks</th>
            <th>Action</th>
        </tr>

        <h1>Documents</h1>
        @if(session("message"))
            <p><strong>{{ session("message") }}</strong></p><br>
        @endif

        <a href="/documents/create">Add New</a>
        @foreach($documents as $document)
        <tr>
            <td> {{$document->code}} </td>
            <td> {{$document->name}} </td>
            <td> {{$document->document_number}} </td>
            <td> {{$document->date_issued}} </td>
            <td> {{$document->date_expiry}} </td>
            <td> {{$document->remarks}} </td>
            <td>
                <a href="/documents/{{$document->id}}">View</a> |
                <a href="/documents/{{$document->id}}/edit">Edit</a> |
                <form action="documents/{{$document->id}}" method="POST">
                    @csrf
                    @method("DELETE")
                    <input type="submit" value="Delete">
                </form>
            </td>
        </tr>
        @endforeach
    </table>

    {{$documents->links()}}
    
@endsection