@extends('layouts.app')

@section('content')

    <p><a href="/documents">Back</a></p>

    <form action="/documents" method="POST">
        @csrf
        <div>
        Code: <input type="number" name="code"><br>
        Name: <input type="text" name="name"><br>
        Document Number: <input type="text" name="document_number"><br>
        Date issued: <input type="date" name="date_issued"><br>
        Date Expiry: <input type="date" name="date_expiry"><br>
        <textarea name="remarks"></textarea><br>
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