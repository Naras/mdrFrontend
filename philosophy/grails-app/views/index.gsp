<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Philosophy</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <style>
body {
    margin: 0;
    padding: 0;
    font-family: 'Kaushan Script', cursive;
    overflow: hidden;
}

.container {
    height: 100vh;
    width: 100vw;
    background-image: url("${resource(dir: 'images', file: 'background.jpg')}");
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    display: flex;
    justify-content: center;
    align-items: center;
    position: relative;
}

.enter-here {
    position: absolute;
    top: 300px;
    left: 250px;
    cursor: pointer;
}

.enter-here:hover {
    transform: scale(1.1);
}

@media (min-width: 1200px) {
    .enter-here {
        top: 65vh;
        left: 70vw;
    }
}

@media (max-width: 1199px) {
    .enter-here {
        top: 60vh;
        left: 60vw;
    }
}

@media (max-width: 768px) {
    .enter-here {
        top: 70vh;
        left: 50vw;
        font-size: 2.5rem;
    }
}

@media (max-width: 480px) {
    .enter-here {
        top: 70vh;
        left: 45vw;
        font-size: 2rem;
    }
}
      a {
        text-align:right;
        display:inline-block;
        }
    </style>
</head>


<body class="landing-page">

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
            <g:render template="/sitePages/annon_menu"/>
        </div>

        <div style="color: black; font-size: 30px;font-weight: 500;">
            <div class="w-auto absolute right-0 bottom-0 p-4">
            <div class="flex flex-col items-center">
                <g:link controller="login" action="auth">Login</g:link>
                <div> <g:link controller="sitePages" action="philosophy"><img style="cursor-pointer" src="${resource(dir: 'images', file: 'enter-here.png')}" alt="Enter" title="Branches" /></g:link></div>
            </div></div>
    </div>
    </div>
</nav>


<div class="page-header" data-parallax="true"  style="background-image: url(<g:assetPath src="/"></g:assetPath>background.svg );margin-top:85px;">
</div>
<div class="bg-full h-screen w-screen" style="background-image: url(<g:assetPath src="/"></g:assetPath>enter_top.png );margin-top:15px;"></div>

<div class="main main-raised" >

    <div class="container">
        <div class="section">
            %{--<div class="col-md-12">
                <h2 class="title">Dashboard</h2>
            </div> --}%
            <g:set var="searchService" bean="searchService"/>
            <g:set var="dashBoardItems" value="${searchService.homePageDashBoardStats()}"/>
            <div class="row">
                <div class="col-md-12">
                    %{--<div class="col-md-2">
                        <div class="card card-pricing">
                            <div class="card-content content-primary">
                                <h3 class="card-title">10</h3>
                                <div class="icon icon-info">
                                    <i class="material-icons">people</i>
                                </div>
                                <h4 class="category text-gray"><b>Users</b></h4>

                            </div>
                        </div>
                    </div>--}%

                    <div class="col-md-2">
                        <div class="card card-pricing">
                            <div class="card-content content-primary">
                                <h3 class="card-title">${dashBoardItems?.digitalManuscripts?.documents}</h3>
                                <div class="icon icon-info">
                                    <i class="material-icons">folder</i>
                                </div>
                                <h4 class="category text-gray"><b><br/>Documents</b></h4>

                            </div>
                        </div>
                    </div>

                    <div class="col-md-2">
                        <div class="card card-pricing">
                            <div class="card-content content-primary">
                                <h3 class="card-title">${dashBoardItems?.digitalManuscripts?.books}</h3>
                                <div class="icon icon-info">
                                    <i class="material-icons">book</i>
                                </div>
                                <h4 class="category text-gray"><b><br/>Books</b></h4>

                            </div>
                        </div>
                    </div>

                    <div class="col-md-2">
                        <div class="card card-pricing">
                            <div class="card-content content-primary">
                                <h3 class="card-title">${dashBoardItems?.digitalManuscripts?.manuscripts}</h3>
                                <div class="icon icon-info">
                                    <i class="material-icons">people</i>
                                </div>
                                <h4 class="category text-gray"><b><br/>Manuscripts</b></h4>

                            </div>
                        </div>
                    </div>

                    <div class="col-md-2">
                        <div class="card card-pricing">
                            <div class="card-content content-primary">
                                <h3 class="card-title">${dashBoardItems?.digitalManuscripts?.articles}</h3>
                                <div class="icon icon-info">
                                    <i class="material-icons">people</i>
                                </div>
                                <h4 class="category text-gray"><b><br/>Articles</b></h4>

                            </div>
                        </div>
                    </div>

                    <div class="col-md-2">
                        <div class="card card-pricing">
                            <div class="card-content content-primary">
                                <h3 class="card-title">Search</h3>
                                <a href="search.html">
                                    <div class="icon icon-info">
                                       <g:link uri="/home"><i class="material-icons">search</i></g:link>
                                    </div>
                                </a>
                                <h4 class="category text-gray"><b>Books/Articles/Manuscripts</b></h4>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>

</div>
<g:render template="/common/footer"/>

</body>

</html>
