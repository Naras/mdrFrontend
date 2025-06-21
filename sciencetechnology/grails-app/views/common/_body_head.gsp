<!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
<header class="topbar left-sidebar">
    <nav class="navbar top-navbar navbar-expand-md navbar-dark sidebar-nav">
        <!-- ============================================================== -->
        <!-- Logo -->
        <!-- ============================================================== -->
        <div class="navbar-header">
            <a class="navbar-brand clearfix" href="${createLink(uri: '/')}">
                <img style="background-color: #0001FB;" src="${resource(dir: 'images', file: 'logo_sf.png')}" alt="Home" title="Home" class="img-responsive"/>
            </a>
        </div>
        <!-- ============================================================== -->
        <!-- End Logo -->


        <!-- ============================================================== -->
        <div class="navbar-collapse">
            <!-- ============================================================== -->
            <!-- toggle and nav items -->
            <!-- ============================================================== -->
            %{--<ul class="nav navbar-nav mr-auto">
                <!-- This is  -->
                <li class="nav-item"> <a class="nav-link nav-toggler d-block d-sm-none waves-effect waves-dark" href="javascript:void(0)"><i class="ti-menu"></i></a> </li>
                <!-- <li class="nav-item"> <a class="nav-link sidebartoggler d-none d-lg-block d-md-block waves-effect waves-dark" href="javascript:void(0)"><i class="icon-menu"></i></a> </li> -->
                <!-- ============================================================== -->
            </ul>--}%
            <!-- ============================================================== -->
            <!-- User profile and search -->

            %{--<ul id="sidebarnav">

            </ul>--}%
            <!-- ============================================================== -->
            <sec:ifLoggedIn>
                <ul class="nav navbar-nav my-lg-0 navbar-right">
                    <!-- ============================================================== -->
                    <!-- User Profile -->
                    <!-- ============================================================== -->
                    <li class="nav-item dropdown u-pro">
                        <a class="nav-link waves-effect waves-dark" href="${createLink(uri: '/')}">
                            <i class="fa fa-home" aria-hidden="true"></i>
                            Home
                        </a>
                    </li>
                    <li class="nav-item dropdown u-pro">
                        <a class="nav-link waves-effect waves-dark" href="${createLink(uri: '/home')}">
                            <i class="fa fa-search" aria-hidden="true"></i>
                            Search
                        </a>
                    </li>
                    <li class="nav-item dropdown u-pro">
                        <a class="nav-link dropdown-toggle waves-effect waves-dark profile-pic" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            %{--<img src="${resource(dir:'AdminLTE/img',file:'profile_avatar.png')}" class="img-circle" alt="User Image" />--}%
                            <i class="fa fa-user" aria-hidden="true"></i> <span class="hidden-md-down text-capitalize"><sec:username/><i class="caret"></i></span>
                        </a>

                        %{--<div class="dropdown-menu dropdown-menu-right animated flipInY">
                            <!-- text-->
                            <g:link controller="users" action="myProfile" class="dropdown-item"><i class="ti-user"></i> <g:message code="myprofile.label" default="My Profile"/></g:link>
                            <!-- text-->
                            <div class="dropdown-divider"></div>
                            <!-- text-->
                            <g:link controller="logout" id="logout" class="dropdown-item"><i class="fa fa-power-off"></i> <g:message code="logout.label" default="Logout"/></g:link>
                            <!-- text-->
                        </div>--}%

                        <ul class="dropdown-menu animated flipInY">
                            <li><g:link controller="users" action="myProfile" class="dropdown-item"><i class="ti-user"></i> <g:message code="myprofile.label" default="My Profile"/></g:link></li>
                            <li role="separator" class="divider"></li>
                            <li><g:link controller="logout" id="logout" class="dropdown-item"><i class="fa fa-power-off"></i> <g:message code="logout.label" default="Logout"/></g:link></li>

                        </ul>
                    </li>

                    <!-- ============================================================== -->
                    <!-- End User Profile -->
                    <!-- ============================================================== -->
                    %{--<li class="nav-item right-side-toggle"> <a class="nav-link  waves-effect waves-light" href="javascript:void(0)"><i class="ti-settings"></i></a></li>--}%
                </ul>
            </sec:ifLoggedIn>
            <h2 style="font-weight: bold;">Science & Technology Documents</h2>
        </div>
    </nav>
</header>
<!-- ============================================================== -->
<!-- End Topbar header -->
