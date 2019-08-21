<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>@yield('title')| {{ env('APP_NAME') }}</title>
    <meta name="description" content="Responsive, Bootstrap, BS4" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

    <!-- style -->
    <!-- build:css ../assets/css/site.min.css -->
    <link rel="stylesheet" href="{{asset('css/lib/bootstrap.css')}}" type="text/css" />
    <link rel="stylesheet" href="{{asset('css/lib/i-con.css')}}" type="text/css" />
    <link rel="stylesheet" href="{{asset('css/lib/theme.css')}}" type="text/css" />
    <link rel="stylesheet" href="{{asset('css/lib/style.css')}}" type="text/css" />
    <!-- endbuild -->
</head>
<body class="layout-column">

@yield('content')

<!-- build:js ../assets/js/site.min.js -->
<!-- jQuery -->
<script src="{{asset('js/lib/jquery.min.js')}}"></script>
<!-- Bootstrap -->
<script src="{{asset('js/lib/popper.min.js')}}"></script>
<script src="{{asset('js/lib/bootstrap.min.js')}}"></script>
<!-- ajax page -->
<script src="{{asset('js/lib/pace.min.js')}}"></script>
<script src="{{asset('js/lib/pjax.js')}}"></script>
<script src="{{asset('js/lib/ajax.js')}}"></script>
<!-- lazyload plugin -->
<script src="{{asset('js/lib/lazyload.config.js')}}"></script>
<script src="{{asset('js/lib/lazyload.js')}}"></script>
<script src="{{asset('js/lib/plugin.js')}}"></script>
<!-- theme -->
<script src="{{asset('js/lib/theme.js')}}"></script>
<!-- endbuild -->
</body>
</html>
