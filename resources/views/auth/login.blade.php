@extends('layouts.app')

@section('content')
    <div class="container flex-center column">
        <h2 class="title">Espace administrateur {{ Auth::user() }}</h2>
        <form action="{{ route('login') }}"  method="POST">
            @csrf
            <div class="form-group">
                <input type="text" id="name" name="name" placeholder="pseudo">
                <label for="name">Pseudo</label>
            </div>
            <div class="form-group">
                <input type="password" id="password" name="password" placeholder="mot de passe">
                <label for="password">Mot de passe</label>
            </div>
            <button type="submit" class="">Connexion</button>
        </form>
    </div>
@endsection
