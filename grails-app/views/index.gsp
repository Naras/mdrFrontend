<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Yoga Text Resource</title>
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <style>

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
            <div style="float: left;padding-left:140px;"> <img style="background-color: #0001FB;height: 40px;" src="${resource(dir: 'images', file: 'logo_sf.png')}" alt="Home" title="Home" class="img-responsive" />
            </div>
            <div style="float: right;
            ">
                Foundation for Indian Civilization Studies
            </div>
        </div>
    </div>
</nav>


<div class="page-header" data-parallax="true"  style="background-image: url(<g:assetPath src="/"></g:assetPath>metallurgy.png );margin-top:85px;">
</div>

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
