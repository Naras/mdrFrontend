<g:applyLayout name="mynewlayout">
    <head >
        <meta name="layout" content="main">
        <g:set var="pageHeader" value="${message(code: 'default.dashboard.label', default: 'Dashboard')}"/>
        <title><g:message value="${message(code: 'default.dashboard.label', default: 'Dashboard')}"/></title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Fenix&display=swap" rel="stylesheet"/>
    <script src="https://unpkg.com/lucide@latest"></script>
    <style>
      .bg-full {
        background-image: url("${resource(dir: 'images', file: 'assets/branches-of-science/background.png')}");
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
      }
      .fenix-regular {
        font-family: "Fenix", serif;
        font-weight: 400;
        font-style: normal;
      }
      .custom-shadow {
        @apply shadow-black;
        box-shadow: 0px 0px 4px 4px black;
      }
      .hover-pop {
        transition: transform 0.3s ease-in-out;
      }
      .hover-pop:hover {
        transform: scale(1.1);
      }
    </style>
    </head>
    <content tag="main-content">
    %{--<g:javascript>
        function positionCircles() {
            const container = document.querySelector(".circle-container")
            const radius = container.offsetWidth / 2 - 50
            const centerX = container.offsetWidth / 2
            const centerY = container.offsetHeight / 2

            const images = document.querySelectorAll(".circle-image")
            const totalImages = images.length
            const angleStep = 360 / totalImages
            console.log('positionCicrcles: there are ' + totalImages + ' images and angleStep is ' + angleStep)

            images.forEach((image, index) => {
                const angle = angleStep * index * (Math.PI / 180) // Convert to radians
                const x = centerX + radius * Math.cos(angle)
                const y = centerY + radius * Math.sin(angle)
                image.style.left = `${x}px`
                image.style.top = `${y}px`
                console.log(' image ' + index + ' x=' + x + ' y='+ y)
            })
      }
      window.onload = positionCircles;
      window.onresize = positionCircles;
    </g:javascript>--}%
    <body class="bg-full h-screen w-screen">
     %{--<img src="${resource(dir: 'images', file: 'assets/background.png')}" style="background-size: cover; background-repeat: no-repeat" />--}%
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                    <div class="title" style="color: black;">
                        <h2 class="title" style="text-align: center;color: black;">Natural Sciences</h2>
                    </div>
    %{--<div class="flex h-full w-full justify-center items-center relative">--}%
     <div style="display: flex; height:100%; width:100%; justify-content:center; align-items:center; position:relative;">
     <img src="${resource(dir: 'images', file: 'assets/natural-sciences/striped_circle_six.png')}" 
            style="position: absolute; width: 600px; height: 600px; transform: translate(70px, 400px); transition: transform 0.3s ease;"/>
      <img src="${resource(dir: 'images', file: 'assets/natural-sciences/center_circle.png')}" 
            style="position: absolute; width: 400px; height: 400px; transform: translate(70px, 400px); transition: transform 0.3s ease;" />
      <div class="circle-container">
            <g:link controller="sitePages" action="ecology"><img
            src="${resource(dir: 'images', file: 'assets/natural-sciences/ecology.png')}"
            class="circle-image"
            style="position:absolute; height:200px; width:200px; transform:translate(178px, 431px); transition: transform 0.3s ease;"
            id="circleFormal"
            onmouseover="hoverFormal()" title="fetching data"
            onclick="window.location.href = constructURL('formal-sciences')"--}%
            /></g:link> 
            <g:link controller="sitePages" action="earthsciences"><img
            src="${resource(dir: 'images', file: 'assets/natural-sciences/earth_sciences.png')}"
            class="circle-image"
            style="position:absolute; height:200px; width:200px; transform:translate(-13px,544px); transition: transform 0.3s ease;"
            %{--id="circleMedical"
            onmouseover="hoverFormal()" title="fetching data"
            onclick="window.location.href = constructURL('medical-sciences')"--}%
            /></g:link>
            <g:link controller="sitePages" action="chemistry"><img
            src="${resource(dir: 'images', file: 'assets/natural-sciences/chemistry.png')}"
            style="position:absolute; height:200px; width:200px; transform:translate(-234px,432px); transition: transform 0.3s ease;"
            class="circle-image"
            %{--id="circleApplied"
            onmouseover="hoverFormal()" title="fetching data"
            onclick="window.location.href = constructURL('applied-sciences')"--}%
            /></g:link>
            <g:link controller="sitePages" action="botany"><img
            src="${resource(dir: 'images', file: 'assets/natural-sciences/botany.png')}"
            class="circle-image"
            style="position:absolute; height:200px; width:200px; transform:translate(-250px,185px); transition: transform 0.3s ease;"
            %{--id="circleSocial"
            onmouseover="hoverFormal()" title="fetching data"
            onclick="window.location.href = constructURL('social-sciences')"--}%
            /></g:link>
            <g:link controller="sitePages" action="astronomy"><img
            src="${resource(dir: 'images', file: 'assets/natural-sciences/astronomy.png')}"
            class="circle-image"
            style="position:absolute; height:200px; width:200px; transform:translate(-40px,49px); transition: transform 0.3s ease;"
            %{--id="circleNatural"
            onmouseover="hoverFormal()" title="fetching data"
            onclick="window.location.href = constructURL('natural-sciences')"--}%
            /></g:link>
            <g:link controller="sitePages" action="physics"><img
            src="${resource(dir: 'images', file: 'assets/natural-sciences/physics.png')}"
            class="circle-image"
            style="position:absolute; height:200px; width:200px; transform:translate(185.25px,172.71px); transition: transform 0.3s ease;"
            %{--id="circleNatural"
            onmouseover="hoverFormal()" title="fetching data"
            onclick="window.location.href = constructURL('natural-sciences')"--}%
            /></g:link>
    </div>
            </div>
        </div></body>
    </content>
</g:applyLayout>