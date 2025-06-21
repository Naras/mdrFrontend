<!doctype html>
<html>
<head>
    <title>Heterodox Systems</title>
    <link rel="stylesheet" href="style.css" type="text/css">
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Fenix&display=swap" rel="stylesheet"/>
    <script src="https://unpkg.com/lucide@latest"></script>
    <style>
:root {
    --font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
    --text-color: white;
    --highlight-color: rgb(139, 36, 1);
    --nav-bg-color:#bb9760a2;
}

body {
    margin: 0;
    padding: 0;
    overflow: hidden;
    font-family: var(--font-family);
    text-align: center;
}

.nav-bar {
    height: 40px;
    width: 100%;
    background-color: var(--nav-bg-color);
    position: fixed;
    top: 0;
    z-index: 11;
}

.icons {
    display: flex;
    position: absolute;
    right: 70px;
    padding-left: 10px;
}

.fourthPage {
    background-image: url("${resource(dir: 'images', file: 'traditional-indian-systems/backgroundImage.png')}");
    height: 100vh;
    width: 100vw;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    display: flex;
    justify-content: center;
    align-items: center;
    position: relative;
}

.inner {
    position: relative;
    height: 100vh;
    width: 100vw;
    display: flex;
    justify-content: center;
    align-items: center;
}

img {
    position: absolute;
}

.HSimage {
    height: 400px;
    width: 400px;
    top: 110px;
    left: 10px;
    z-index: 4;
}

.god {
    height: 100px;
    width: 100px;
    z-index: 5;
}

.god7 {
    top: 115px;
    left: 230px;
}

.god8 {
    top: 260px;
    left: 320px;
}

.god9 {
    top: 400px;
    left: 230px;
}

.leaf {
    position: absolute;
}

.orangeLeaf1 {
    height: 450px;
    width: 450px;
    transform: rotate(25deg);
    top: -80px;
    left: 250px;
}

.greenLeaf2 {
    height: 200px;
    width: 390px;
    top: 200px;
    left: 310px;
    z-index: 1;
}

.orangeLeaf3 {
    height: 400px;
    width: 460px;
    top: 260px;
    left: 250px;
}

span {
    color:rgb(139, 36, 1);
}

h3 {
    color: white;
}

h3:hover {
    transform: scale(1.1);
}

.Charvaka {
    position: absolute;
    top: 80px;
    left: 435px;
    transition: transform 0.3s ease;
}

.Buddhism {
    position: absolute;
    top: 250px;
    left: 480px;
    z-index: 1;
    transition: transform 0.3s ease;
}

.Jainism {
    position: absolute;
    top: 430px;
    left: 460px;
    transition: transform 0.3s ease;
}

    .nav-button {
        background-color: transparent;
        border: none;
        cursor: pointer;
        display: inline-flex;
        align-items: center;
        padding: 5px 20px;
    }
    .nav-button:hover:before {
        content:"hint: try login with user - guest@mailinator.com and password - guest";
    }
    </style>
</head>

<body class="bg-full h-screen max-w-screen">
    <nav class="nav-bar flex justify-center">
      <div class="flex gap-9 cursor-pointer items-center"
        <p>Home</p>
      </div>
      <div
        <li>
          %{--<a href="${createLink(uri: 'http://127.0.0.1:8080/MDRPhilosophy')}" + ' target="_blank"'>Login (Manuscripts Digital Repsoitory)</a>--}%
          <g:link uri="${mdrHost}${mdrAppName}" target="_blank">Login (Manuscripts Digital Repsoitory)</g:link>
        </li>
      </div>
      <div
        class="flex gap-1 cursor-pointer items-center"
        onclick="history.back()"
      >
        <i data-lucide="arrow-big-left-dash" class="text-white"></i>
        <p>Back</p>
      </div>
    </nav>  
    <div class="fourthPage">    
        <div class="inner">
            <img class="HSimage" src="${resource(dir: 'images', file: 'heterodox-systems/HSimage.png')}" alt="HSimage">
            <img class="god god7" src="${resource(dir: 'images', file: 'heterodox-systems/god7.png')}" alt="god7">
            <img class="god god8" src="${resource(dir: 'images', file: 'heterodox-systems/god8.png')}" alt="god8">
            <img class="god god9" src="${resource(dir: 'images', file: 'heterodox-systems/god9.png')}" alt="god9">
            <img class="leaf orangeLeaf1" src="${resource(dir: 'images', file: 'heterodox-systems/orangeLeaf.png')}" alt="orangeLeaf1">
            <img class="leaf greenLeaf2" src="${resource(dir: 'images', file: 'heterodox-systems/greenLeaf2.png')}" alt="greenLeaf2">
            <img class="leaf orangeLeaf3" src="${resource(dir: 'images', file: 'heterodox-systems/orangeLeaf3.png')}" alt="orangeLeaf3">
            <g:link controller="sitePages" action="Carvaka" title="fetching data" onmouseover="hoverCarvaka()">
                <h3 class="Charvaka"><span>चार्वाक दर्शनम्</span><br>Charvaka</h3>
            </g:link>
            <<g:link controller="sitePages" action="Baudhha" id="Bauddha" title="fetching data" onmouseover="hoverBauddha()">
                <h3 class="Buddhism"><span>बौद्ध दर्शनम्</span><br>Buddhism</h3>
            </g:link>
            <g:link controller="sitePages" action="Jaina" id="Jaina" title="fetching data" onmouseover="hoverJaina()">
                <h3 class="Jainism"><span>जैन दर्शनम्</span><br>Jainism</h3>
            </g:link>
        </div>
    </div>
    <script>
        lucide.createIcons()
      </script>

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
