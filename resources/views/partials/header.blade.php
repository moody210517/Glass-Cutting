<header id="header" class="page-header bg-white box-shadow animate fadeInDown">
    <div class="navbar navbar-expand-lg" >
        <!-- btn to toggle sidenav on small screen -->
        <a class="d-lg-none i-con-h-a px-1" data-toggle="modal" data-target="#aside">
            <i class="i-con i-con-menu text-muted"></i>
        </a>
        <!-- brand -->
        <a href="{{ url('/') }}" class="navbar-brand">
            <!-- <img src="../assets/img/logo.png" alt="..."> -->
            <span class="hidden-folded d-inline l-s-n-1x ">{{ __('Glass Baron') }}</span>
        </a>
        <!-- / brand -->

        <!-- Navbar collapse -->
        <div class="collapse navbar-collapse order-2 order-lg-1" id="navbarToggler">
            <ul class="navbar-nav" data-nav>
                <li class="nav-item">
                    @role('admin')
                    <a href="{{ route('user.all') }}" class="nav-link">
                        <span class="nav-text">Admin</span>
                    </a>
                    @endrole
                </li>
            </ul>
        </div>

        <ul class="nav navbar-menu order-1 order-lg-2">

            <li class="nav-item dropdown">
                <a class="nav-link px-2 i-con-h-a" data-toggle="dropdown">
                    <i class="i-con i-con-droplet solid text-success"></i>
                </a>
                <!-- ############ Setting START-->
                <div class="dropdown-menu dropdown-menu-center mt-3 w animate fadeIn">
                    <div class="setting px-3">
                        <div class="mb-2">
                            <strong>Setting:</strong>
                        </div>
                        <div class="mb-3" id="settingLayout">
                            <label class="ui-check my-1 d-block">
                                <input type="checkbox" name="stickyHeader">
                                <i></i>
                                <small>Sticky header</small>
                            </label>
                            @role('admin')
                            <label class="ui-check my-1 d-block">
                                <input type="checkbox" name="stickyAside">
                                <i></i>
                                <small>Sticky aside</small>
                            </label>
                            <label class="ui-check my-1 d-block">
                                <input type="checkbox" name="foldedAside">
                                <i></i>
                                <small>Folded Aside</small>
                            </label>
                            <label class="ui-check my-1 d-block">
                                <input type="checkbox" name="hideAside">
                                <i></i>
                                <small>Hide Aside</small>
                            </label>
                            @endrole
                        </div>
                        <div class="mb-2">
                            <strong>Color:</strong>
                        </div>
                        <div>
                            <label class="radio radio-inline ui-check ui-check-md">
                                <input type="radio" name="bg" value="">
                                <i></i>
                            </label>
                            <label class="radio radio-inline ui-check ui-check-color ui-check-md">
                                <input type="radio" name="bg" value="bg-dark">
                                <i class="bg-dark"></i>
                            </label>
                        </div>
                    </div>
                </div>
                <!-- ############ Setting END-->
            </li>

            <!-- User dropdown menu -->
            <li class="nav-item dropdown">
                <a href="#" data-toggle="dropdown" class="nav-link d-flex align-items-center py-0 px-lg-0 px-2 text-color">
                    <span class=" mx-2 d-none l-h-1x d-lg-block text-right">
                        <small class='text-fade d-block mb-1'>{{ __('Welcome') }}</small>
                        <span>{{ Auth::user()->name }}</span>
                    </span>
                    <span class="avatar w-36">
                        <img src="{{ asset('img/a.jpg') }}" alt="...">
                    </span>
                </a>
                <div class="dropdown-menu dropdown-menu-right w pt-0 mt-3 animate fadeIn">
                    <div class="row no-gutters mb-2 text-center r-t b-b"></div>
                    <a class="dropdown-item" href="{{ route('logout') }}"
                       onclick="event.preventDefault();document.getElementById('logout-form').submit();">{{ __('Sign out') }}</a>
                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                        {{ csrf_field() }}
                    </form>
                </div>
            </li>
            <!-- Navarbar toggle btn -->
            <li class="nav-item d-lg-none">
                <a href="#" class="nav-link i-con-h-a px-1" data-toggle="collapse" data-toggle-class data-target="#navbarToggler">
                    <i class="i-con i-con-nav text-muted"><i></i></i>
                </a>
            </li>
        </ul>
    </div>
</header>