@extends('layouts.app')

@section('content')
    <div class="container flex-center column">
        <h2 class="title">Inscription</h2>
        <form action="{{ route('register') }}" method="POST" class="auth">
            @csrf
            <div class="form-group" >
                <input type="text" id="name" name="name" placeholder="name">
                <label for="name">Pseudo</label>
            </div>
            <div class="form-group">
                <input type="email" id="email" name="email" placeholder="email">
                <label for="email">Adresse mail</label>
            </div>
            <div class="form-group">
                <input type="password" id="password" name="password" placeholder="Password">
                <label for="password">Mot de passe</label>
            </div>
            <div class="form-group">
                <input type="password" id="password-confirm" name="password_confirmation" placeholder="password-confirm">
                <label for="password-confirm">Mot de passe</label>
            </div>
            <button type="submit">Inscription</button>
        </form>
    </div>
@endsection
