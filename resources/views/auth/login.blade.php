@extends('layouts.app')

@section('content')
<div class="limiter">
    <div class="container-login100" style="background-image: url({{url('logintema/images/bg-01.jpg')}});">
        <div class="wrap-login100">
            <form class="login100-form validate-form" action="{{ route('login') }}" method="post">
                @csrf
                <span class="login100-form-logo">
                    <i class="nav-icon fas fa-hand-holding-water" style="color: #dc3545;"></i>
                </span>

                <span class="login100-form-title p-b-34 p-t-27">
                    Manajemen Darah
                </span>

                <div class="wrap-input100 validate-input" data-validate="Masukkan Email">
                    <input class="input100" id="email" name="email" type="email" placeholder="Email">
                    <span class="focus-input100" data-placeholder="&#xf207;"></span>
                </div>

                <div class="wrap-input100 validate-input" data-validate="Enter password">
                    <input class="input100" id="password" type="password" name="password" placeholder="Password">
                    <span class="focus-input100" data-placeholder="&#xf191;"></span>
                </div>



                <div class="container-login100-form-btn">
                    <button class="login100-form-btn" type="submit">
                        Login
                    </button>
                </div>

                <div class="text-center p-t-90">
                    <a class="txt1" href="#">
                        Lupa Password?
                    </a>
                </div>
            </form>
        </div>
    </div>
</div>


<div id="dropDownSelect1"></div>
@endsection