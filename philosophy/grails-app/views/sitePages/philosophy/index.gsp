<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Philosophy</title>
    <link rel="stylesheet" href="style.css" type="text/css">
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Fenix&display=swap" rel="stylesheet"/>
    <script src="https://unpkg.com/lucide@latest"></script>
    <style>
    body {
        margin: 0;
        padding: 0; 
        overflow: hidden;
        font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        text-align: center;
    }
    .nav-bar {
        height: 40px;
        width: 100%;
        background-color: #bb9760a2;
        position: fixed;
        top: 0px;
        z-index: 100;
    }
    
    .nav-buttons {
        display: flex;
        justify-content: flex-end;
        margin-top: -5px;
        padding-right: 50px;
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
    .nav-button i {
        color: white;
    }

    .nav-button span p {
        color: white;
        margin-left: 10px;
    }

    span {
        color: rgb(139, 36, 1);
    }
    
    .firstScreen {
        background-image: url("${resource(dir: 'images', file: 'traditional-indian-systems/backgroundImage.png')}");
        background-size: cover; 
        background-position: center;
        height: 100vh; 
        width: 100vw;
        position: relative;
    }

    .TIPimage {
        height: 386px;
        width: 386px;
        position: absolute;
        top: 200px;
        left: 60px;
        z-index: 1;
    }

    .orangeLeaf, .greenLeaf {
        height: auto;
        width: auto;
        position: absolute;
    }

    .orangeLeaf {
        transform: rotate(30deg);
        left: 220px;
        top: -10px;
    }

    .greenLeaf {
        top: 160px;
        left: 230px;
    }

    .orthodoxSystems {
        position: absolute;
        top: 200px;
        left: 430px;
        color: white;
        font-weight: bold;
        font-size: 15px;
    }

    .HeterodoxSystems {
        position: absolute;
        top: 400px;
        left: 440px;
        color: white;
        font-weight: bold;
        font-size: 15px;
    }

    h3:hover {
        transform: scale(1.1);
        transition: transform 0.3s ease;
    }
    
    a {
        text-decoration: none; 
        color: inherit; 
    }

    a:active, a:focus {
        background-color: transparent; 
        outline: none;
    }
    </style>
</head>


<body class="landing-page">
<%-- <body class="bg-full h-screen max-w-screen"> --%>
    <nav class="nav-bar flex justify-center gap-4">
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

    <div class="firstScreen">
        <img class="TIPimage" src="${resource(dir: 'images', file: 'traditional-indian-systems/TIP.png')}" alt="TIPimage">
        <img class="orangeLeaf" src="${resource(dir: 'images', file: 'traditional-indian-systems/orangeLeaf.png')}" alt="orangeLeaf">
        <img class="greenLeaf" src="${resource(dir: 'images', file: 'traditional-indian-systems/greenLeaf.png')}" alt="greenLeaf">
        <g:link controller="sitePages" action="orthodoxSystems" title="fetching data" id="orthodox'" onmouseover="hoverOrthodox()">
            <h3 class="orthodoxSystems"><span style="color:rgb(139, 36, 1)">आस्तिक दर्शनम्</span><br> Orthodox Systems</h3>
        </g:link>
        <g:link controller="sitePages" action="heterodoxSystems" title="fetching data" id="heterodox" onmouseover="hoverHeterodox()">
            <h3 class="HeterodoxSystems"><span style="color:rgb(139, 36, 1)">नास्तिक दर्शनम्</span><br> Heterodox Systems</h3>
        </g:link>
    </div>


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
