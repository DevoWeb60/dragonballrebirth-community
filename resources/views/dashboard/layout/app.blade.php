<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="shortcut icon" href="https://www.dragonballrebirth.fr/css/images/favicon.png" type="image/x-icon">
    <link href="{{ asset('css/styles.css') }}" rel="stylesheet">
    <title>Community Dragon Ball Rebirth</title>
</head>
<body class="admin">
    @yield('content')

    <script src="{{ asset('js/app.js') }}">
    </script>
</body>
</html>
