<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Orthodox Systems</title>
    <link rel="stylesheet" href="style.css" type="text/css">
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Fenix&display=swap" rel="stylesheet"/>
    <script src="https://unpkg.com/lucide@latest"></script>
    <style>/* Global Styles */
:root {
    --font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
    --text-color: white;
    --highlight-color: rgb(139, 36, 1);
    --nav-bg-color: #bb9760a2;
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
    z-index: 1;
}

.icons {
    position: absolute;
    right: 70px;
    padding: 10px;
}

.second-page {
    background-image: url("${resource(dir: 'images', file: 'traditional-indian-systems/backgroundImage.png')}");
    height: 100vh;
    width: 100vw;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    position: relative;
}

.OSimage {
    height: 357px;
    width: 357px;
    position: absolute;
    top: 150px;
    left: 80px;
    z-index: 1;
}

.leaf {
    position: absolute;
}

.orangeLeaf1 {
    height: 350px;
    width: 350px;
    left: 150px;
    top: -20px;
    transform: rotate(-25deg);
}

.greenLeaf2 {
    height: 150px;
    top: 130px;
    left: 240px;
    transform: rotate(-35deg);
}

.orangeLeaf3 {
    height: 350px;
    top: 120px;
    left: 250px;
}

.greenLeaf4 {
    height: 150px;
    top: 320px;
    left: 290px;
}

.orangeLeaf5 {
    height: 350px;
    top: 310px;
    left: 230px;
    transform: rotate(10deg);
}

.greenLeaf6 {
    height: 150px;
    top: 490px;
    left: 140px;
    transform: rotate(45deg);
}

span {
    color: var(--highlight-color);
}

h3 {
    color: var(--text-color);
    position: absolute;
    transition: transform 0.3s;
}

h3:hover {
    transform: scale(1.1);
}

.Nyaya {
    top: 70px;
    left: 300px;
}

.Vaisesika {
    top: 150px;
    left: 380px;
}

.Sankya {
    top: 250px;
    left: 420px;
    z-index: 1;
}

.Yoga {
    top: 350px;
    left: 430px;
}

.PurvaMimamsa {
    top: 460px;
    left: 370px;
}

.UttaraMimamsa {
    top: 540px;
    left: 260px;
}

a {
    padding: 10px;
    display: inline-block;
    height: 100px;
    width: 100px;
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
    .smallfontsize { font-size: 20px; font-weight: bold}
    </style>
</head>

<body class="bg-full h-screen max-w-screen">
    <nav class="nav-bar flex justify-center">
      <div class="flex gap-1 cursor-pointer items-center"
        <p>Home</p>
      </div>
      <div
        <li>
          %{--<a href="${createLink(uri: 'http://127.0.0.1:8080/MDRPhilosophy')}" + ' target="_blank"'>Login MDR</a>--}%
          <g:link uri="${mdrHost}${mdrAppName}" target="_blank">Login MDR</g:link>
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
    <div class="second-page">
        <img class="OSimage" src="${resource(dir: 'images', file: 'orthodox-systems/OSimage.png')}" alt="OSimage">
        <img class="leaf orangeLeaf1" src="${resource(dir: 'images', file: 'orthodox-systems/orangeLeaf.png')}" alt="orangeLeaf1">
        <img class="leaf greenLeaf2" src="${resource(dir: 'images', file: 'orthodox-systems/greenLeaf2.png')}" alt="greenLeaf2">
        <img class="leaf orangeLeaf3" src="${resource(dir: 'images', file: 'orthodox-systems/orangeLeaf3.png')}" alt="orangeLeaf3">
        <img class="leaf greenLeaf4" src="${resource(dir: 'images', file: 'orthodox-systems/greenLeaf4.png')}" alt="greenLeaf4">
        <img class="leaf orangeLeaf5" src="${resource(dir: 'images', file: 'orthodox-systems/orangeLeaf5.png')}" alt="orangeLeaf5">
        <img class="leaf greenLeaf6" src="${resource(dir: 'images', file: 'orthodox-systems/greenLeaf4.png')}" alt="greenLeaf6">
        <g:link controller="sitePages" action="Nyaya" id="Nyaya" title="fetching data" onmouseover="hoverNyaya()">
            <h3 class="Nyaya smallfontsize"><span>न्याय</span><br>Nyaya</h3>
        </g:link>
        <<g:link controller="sitePages" action="Vaisesika" title="fetching data" onmouseover="hoverVaisesika()">
            <h3 class="Vaisesika smallfontsize"><span>वैशेषिक</span><br>Vaisesika</h3>
        </g:link>
        <g:link controller="sitePages" action="Sankya" title="fetching data" onmouseover="hoverSankhya()">
            <h3 class="Sankya smallfontsize"><span>सांख्य</span><br>Sankya</h3>
        </g:link>
        <g:link controller="sitePages" action="Yoga" title="fetching data" onmouseover="hoverYoga()">
            <h3 class="Yoga smallfontsize"><span>योग</span><br>Yoga</h3>
        </g:link>
        <g:link controller="sitePages" action="PurvaMimamsa" title="fetching data" onmouseover="hoverPurvaMimamsa()">
            <h3 class="PurvaMimamsa smallfontsize"><span>पूर्व मीमांसा</span><br>Purva<br>Mimamsa</h3>
        </g:link>
        <g:link controller="sitePages" action="UttaraMimamsa" id="UttaraMimamsa" title="fetching data" onmouseover="hoverUttaraMimamsa()">
            <h3 class="UttaraMimamsa smallfontsize"><span>उत्तर मीमांसा</span><br>Uttara<br>Mimamsa</h3>
        </g:link>
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
