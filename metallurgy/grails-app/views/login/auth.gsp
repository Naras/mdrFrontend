<html>
<head>
    <meta name="layout" content="${gspLayout ?: 'main'}"/>
    <title><g:message code='springSecurity.login.title'/></title>
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
</head>


<body class="login-page">
<nav class="navbar navbar-default navbar-transparent navbar-fixed-top navbar-color-on-scroll" color-on-scroll=" " id="sectionsNav">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <!-- <a class="navbar-brand" href="../presentation.html">Material Kit PRO</a> -->
        </div>

        <div class="collapse navbar-collapse">
            %{--<ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="">
                        About The Project
                    </a>
                </li>
                <li>
                    <a href="">
                        Uniqueness of the Project
                    </a>
                </li>
                <li>
                    <a href="">
                        How to Use this Repository
                    </a>
                </li>
                <li>
                    <a href="">
                        Digital Repository
                    </a>
                </li>
                --}%%{--<li>
                    <a href="">
                        Utilities of the Project
                    </a>
                </li>--}%%{--
                <li>
                    <a href="http://samskruti.org/" target="_blank">
                        About Samskriti Foundation
                    </a>
                </li>
                <li>
                    <g:link controller="login" action="auth">Login</g:link>
                </li>
            </ul>--}%
            <g:render template="/sitePages/annon_menu"/>
            <div style="color: black; font-size: 30px;font-weight: 500;">
                <div style="float: left;padding-left:140px;"> <img style="background-color: #0001FB;height: 40px;" src="${resource(dir: 'images', file: 'logo_sf.png')}" alt="Home" title="Home" class="img-responsive" />
                </div>
                <div style="float: right;
                ">
                    %{--Foundation for Indian Civilization Studies--}%
                    Metallurgy
                </div>
            </div>
        </div>

    </div>
</nav>

<div class="page-header " style="background-image: url('/assets/login-page-bg.png'); background-size: cover; background-position: top center;">
    <div class="container" style="min-height:580px">
        <div class="row">
            <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
                <div class="card card-signup">
                    <form action="${postUrl ?: '/login/authenticate'}" method="POST" id="loginForm" class="cssform" autocomplete="off">
                        <div class="header header-primary text-center">
                            <h4 class="card-title">Log in</h4>
                        </div>
                        <div class="card-content">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="material-icons">email</i>
                                </span>
                                <input type="text" class="form-control" name="${usernameParameter ?: 'username'}" id="username" placeholder="Username"/>
                            </div>

                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="material-icons">lock_outline</i>
                                </span>
                                <input type="password" class="form-control" name="${passwordParameter ?: 'password'}" id="password" placeholder="Password"/>
                            </div>

                            <!-- If you want to add a checkbox to this form, uncomment this code

								<div class="checkbox">
									<label>
										<input type="checkbox" name="optionsCheckboxes" checked>
										Subscribe to newsletter
									</label>
								</div> -->
                        </div>
                        <div class="footer text-center">
                            %{--<a href="#pablo" class="btn btn-primary btn-simple btn-wd btn-lg">Sign In</a>--}%
                            <input type="submit" id="submit"  class="btn btn-primary btn-simple btn-wd btn-lg" value="${message(code: 'springSecurity.login.button')}"/>
                            <g:link controller="register" class="btn btn-primary btn-simple btn-wd btn-lg" action="register">Register</g:link>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    %{--<footer class="footer">
        <div class="container">
            <nav class="pull-left">

            </nav>
            <!-- <div class="copyright pull-right"> -->
            <!-- &copy; <script>document.write(new Date().getFullYear())</script>, made with <i class="fa fa-heart heart"></i> by Creative Tim -->
            <!-- </div> -->
        </div>
    </footer>--}%

</div>

</body>

</html>
