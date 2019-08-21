<div id="aside" class="page-sidenav no-shrink  nav-expand  animate fadeInLeft fade" aria-hidden="true">
    <div class="sidenav h-100 modal-dialog bg-white box-shadow">
        <!-- sidenav top -->
        <!-- Flex nav content -->
        <div class="flex scrollable hover">
            <div class="nav-border b-primary" data-nav>
                <ul class="nav bg">

                    <li class="nav-header hidden-folded">
                        <span>Main</span>
                    </li>

                    <li>
                        <a href="{{ route('home') }}" class="i-con-h-a">
		                  <span class="nav-icon">
		                    <i class="i-con i-con-home"><i></i></i>
		                  </span>
                            <span class="nav-text">Home</span>
                        </a>
                    </li>

                    <li class="nav-header hidden-folded">
                        <span>Apps</span>
                    </li>
                    <li>
                        <a href="{{ route('permission.all') }}" class="i-con-h-a">
		                  <span class="nav-icon">
		                    <i class="i-con i-con-lock"><i></i></i>
		                  </span>
                          <span class="nav-text">Permissions</span>
                        </a>
                    </li>
                    <li>
                        <a href="{{ route('role.all') }}" class="i-con-h-a">
		                  <span class="nav-icon">
		                    <i class="i-con i-con-layer"><i></i></i>
		                  </span>
                          <span class="nav-text">Roles</span>
                        </a>
                    </li>
                    <li>
                        <a href="{{ route('user.all') }}" class="i-con-h-a">
		                  <span class="nav-icon">
		                    <i class="i-con i-con-users"><i></i></i>
		                  </span>
                            <span class="nav-text">Users</span>
                        </a>
                    </li>
                    <li>
                        <a href="{{ route('baron.all') }}" class="i-con-h-a">
		                  <span class="nav-icon">
		                    <i class="i-con i-con-shop"><i></i></i>
		                  </span>
                            <span class="nav-text">Barons</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>

        <!-- sidenav bottom -->
        <div class="no-shrink ">
            <div class="text-sm p-3 b-t">
                <div class="hidden-folded text-sm">
                    <div class="text-muted"><small class="text-muted">&copy; {{ __('Copyright') }} {{ date('Y') }}, {{ __('Glass Baron') }}</small></div>
                </div>
            </div>
        </div>
    </div>
</div>