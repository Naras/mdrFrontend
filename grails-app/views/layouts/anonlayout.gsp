<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Yoga Text Resource</title>
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <style>
    /*.page-header {
        background-image: url(<g:assetPath src="/"></g:assetPath>bg01.jpg );
        }*/
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


<div class="page-header header-small" data-parallax="true" style="background-image: url(<g:assetPath src="/"></g:assetPath>metallurgy.png );">
</div>
<div class="main main-raised">
<div class="container" style="min-height:400px">

    <g:pageProperty name="page.main-content"/>

</div>
</div>
<footer class="footer">
    <div class="container">
        Implemented by Samskriti Foundation , Karnataka
    </div>
</footer>

</body>

</html>
