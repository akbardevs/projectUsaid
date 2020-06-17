<<<<<<< HEAD
<!doctype html>
=======
<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <title>login Mananajemen Darah</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <!--===============================================================================================-->
    <link rel="icon" href="{{asset('/adminlte/dist/img/logo_darah.png')}}" />
    <!--===============================================================================================-->
    <link rel="stylesheet" href="{{asset('adminlte/logintema/vendor/bootstrap/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('adminlte/dist/plugins/fontawesome-free/css/all.min.css')}}">
    <!--===============================================================================================-->
    <link rel="stylesheet" href="{{asset('logintema/fonts/font-awesome-4.7.0/css/font-awesome.min.css')}}">
    <!--===============================================================================================-->
    <link rel="stylesheet" href="{{asset('logintema/fonts/iconic/css/material-design-iconic-font.min.css')}}">
    <!--===============================================================================================-->
    <link rel="stylesheet" href="{{asset('logintema/vendor/animate/animate.css')}}">
    <!--===============================================================================================-->
    <link rel="stylesheet" href="{{asset('logintema/vendor/css-hamburgers/hamburgers.min.css')}}">
    <!--===============================================================================================-->
    <link rel="stylesheet" href="{{asset('logintema/vendor/animsition/css/animsition.min.css')}}">
    <!--===============================================================================================-->
    <link rel="stylesheet" href="{{asset('logintema/vendor/select2/select2.min.css')}}">
    <!--===============================================================================================-->
    <link rel="stylesheet" href="{{asset('logintema/vendor/daterangepicker/daterangepicker.css')}}">
    <!--===============================================================================================-->
    <link rel="stylesheet" href="{{asset('logintema/css/util.css')}}">
    <link rel="stylesheet" href="{{asset('logintema/css/main.css')}}">
    <!--===============================================================================================-->

</head>

<body>


    <main class="py-4">
        @yield('content')
    </main>


    <!--===============================================================================================-->
    <script src="{{asset('logintema/vendor/jquery/jquery-3.2.1.min.js')}}"></script>
    <!--===============================================================================================-->
    <script src="{{asset('logintema/vendor/animsition/js/animsition.min.js')}}"></script>
    <!--===============================================================================================-->
    <script src="{{asset('logintema/vendor/bootstrap/js/popper.js')}}"></script>
    <script src="{{asset('logintema/vendor/bootstrap/js/bootstrap.min.js')}}"></script>
    <!--===============================================================================================-->
    <script src="{{asset('logintema/vendor/select2/select2.min.js')}}"></script>
    <!--===============================================================================================-->
    <script src="{{asset('logintema/vendor/daterangepicker/moment.min.js')}}"></script>
    <script src="{{asset('logintema/vendor/daterangepicker/daterangepicker.js')}}"></script>
    <!--===============================================================================================-->
    <script src="{{asset('logintema/vendor/countdowntime/countdowntime.js')}}"></script>
    <!--===============================================================================================-->
    <script src="{{asset('logintema/js/main.js')}}"></script>

</body>

</html>





























{{-- <!doctype html>
>>>>>>> 523802307866a9c2c3544bac332fa9f813494cce
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Scripts -->
    <!-- Font Awesome -->
    <link rel="stylesheet" href="{{asset('adminlte/dist/plugins/fontawesome-free/css/all.min.css')}}">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- icheck bootstrap -->
    <link rel="stylesheet" href="{{asset('adminlte/dist/plugins/icheck-bootstrap/icheck-bootstrap.min.css')}}">
    <!-- Theme style -->
    <link rel="stylesheet" href="{{asset('adminlte/dist/css/adminlte.min.css')}}">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>

<<<<<<< HEAD
<body class="hold-transition login-page">
=======
<body class="hold-transition logintema-page"> --}}
>>>>>>> 523802307866a9c2c3544bac332fa9f813494cce
    {{-- <div id="app">
        <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
            <div class="container">
                <a class="navbar-brand" href="{{ url('/') }}">
    {{ config('app.name', 'Laravel') }}
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <!-- Left Side Of Navbar -->
        <ul class="navbar-nav mr-auto">

        </ul>

        <!-- Right Side Of Navbar -->
        <ul class="navbar-nav ml-auto">
            <!-- Authentication Links -->
            @guest
            <li class="nav-item">
<<<<<<< HEAD
                <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
=======
                <a class="nav-link" href="{{ route('logintema') }}">{{ __('logintema') }}</a>
>>>>>>> 523802307866a9c2c3544bac332fa9f813494cce
            </li>
            @if (Route::has('register'))
            <li class="nav-item">
                <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
            </li>
            @endif
            @else
            <li class="nav-item dropdown">
                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false" v-pre>
                    {{ Auth::user()->name }} <span class="caret"></span>
                </a>

                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="{{ route('logout') }}" onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                        {{ __('Logout') }}
                    </a>

                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                        @csrf
                    </form>
                </div>
            </li>
            @endguest
        </ul>
    </div>
    </div>
    </nav> --}}

<<<<<<< HEAD
    <main class="py-4">
=======
    {{-- <main class="py-4">
>>>>>>> 523802307866a9c2c3544bac332fa9f813494cce
        @yield('content')
    </main>
    </div>

    <!-- jQuery -->
    <script src="{{asset('adminlte/dist/plugins/jquery/jquery.min.js')}}"></script>
    <!-- Bootstrap 4 -->
    <script src="{{asset('adminlte/dist/plugins/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
    <!-- AdminLTE App -->
    <script src="{{asset('adminlte/dist/js/adminlte.min.js')}}"></script>
</body>

<<<<<<< HEAD
</html>
=======
</html> --}}
>>>>>>> 523802307866a9c2c3544bac332fa9f813494cce
