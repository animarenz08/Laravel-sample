@extends('layouts.app')

@section('content')

    <p><a href="/documents">Back</a></p>

    <form action="/documents/{{ $document->id }}" method="POST">
        @csrf
        @method('PUT')

        <div>
            Code: <input type="number" name="code" value="{{ $document->code }}"><br>
            Name: <input type="text" name="name" value="{{ $document->name }}"><br>
            Document Number: <input type="text" name="document_number" value="{{ $document->document_number }}"><br>
            Date issued: <input type="date" name="date_issued" value="{{ $document->date_issued }}"><br>
            Date Expiry: <input type="date" name="date_expiry" value="{{ $document->date_expiry }}"><br>
            <textarea name="remarks">{{ $document->remarks }}</textarea><br>
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