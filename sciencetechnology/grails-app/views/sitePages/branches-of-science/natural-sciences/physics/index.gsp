<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Physics</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Fenix&display=swap" rel="stylesheet"/>
    <script src="https://unpkg.com/lucide@latest"></script>
    <style>
      .bg-full {
        background-image: url("${resource(dir: 'images', file: 'assets/natural-sciences/physics/background.png')}");
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
<body class="bg-full h-screen max-w-screen">
    <nav class="flex justify-end p-4 pr-8 text-[#646464] bg-[#A6C4FF] gap-4">
      <div class="flex gap-1 cursor-pointer items-center"
        %{--onclick="window.location.href = document.URL.split('/').slice(0, -3).join('/')"
      >
        <i data-lucide="house" class="text-white"></i>--}%
        <p>Home</p>
      </div>
      <div
        <li>
          %{--<a href="${createLink(uri: 'http://127.0.0.1:8080/MDR')}" + ' target="_blank"'>Login (Manuscripts Digital Repsoitory)</a>--}%
          <g:link uri="${mdrHost}${mdrAppName}" target="_blank">Login (Manuscripts Digital Repsoitory)</g:link>
        </li>
        %{--class="flex gap-1 cursor-pointer items-center"
        onclick='window.location.href = "http://127.0.0.1:8080/sciencetechnology"'
        title="hint: try login with user - guest@mailinator.com and password - guest"
      >
        <i data-lucide="arrow-big-left-dash" class="text-white"></i>
        <p>Login (Manuscripts Digital Repsoitory)</p>--}%
      </div>
      <div
        class="flex gap-1 cursor-pointer items-center"
        onclick="history.back()"
      >
        <i data-lucide="arrow-big-left-dash" class="text-white"></i>
        <p>Back</p>
      </div>
    </nav>
    <div class="flex flex-col justify-between min-h-[calc(100vh-64px)] px-8">
      <div class="pt-8">
      <img src="${resource(dir: 'images', file: 'assets/natural-sciences/physics/title_sanskrit.png')}" />
      <img src="${resource(dir: 'images', file: 'assets/natural-sciences/physics/title.png')}" />
      </div>
      <div class="flex justify-between flex-wrap gap-4">
        <p class="text-white text-bold text-3xl max-w-2xl">
          Astronomy, the study of celestial objects such as stars, planets,
          galaxies, and their influence on our planet. The earliest references
          to physics appear in the Rig Veda dating back to Vedic times. Sages
          and scholars like Yagnavalkya, Aryabhatta, Varahamihira, and
          Bhaskaracharya made significant contributions to this field. The
          distance between the Sun and Earth and the time it taken for sunlight
          to reach our planet were calculated accurately by our scholars. These
          insights highlight the profound contributions of our ancestors to the
          fascinating field of physics.
        </p>
        <div class="flex justify-evenly flex-wrap items-end mb-4">
          <div class="flex justify-evenly w-full mb-4 gap-8">
            <span class="bg-blue-900 text-white rounded-full px-6 py-2 text-lg font-semibold shadow">Manuscripts: ${manuscriptCount}</span>
            <span class="bg-blue-900 text-white rounded-full px-6 py-2 text-lg font-semibold shadow">Books: ${bookCount}</span>
            <span class="bg-blue-900 text-white rounded-full px-6 py-2 text-lg font-semibold shadow">Articles: ${articleCount}</span>
          </div>
          <img
            src="${resource(dir: 'images', file: 'assets/natural-sciences/astronomy/manuscripts.png')}"
            alt="manuscripts"
            class="h-[200px] w-[250px] hover-pop cursor-pointer"
            onclick="window.location.href = '${createLink(controller: 'search', action: 'results', params: [categoryFkId: 51, docType: 2])}'"
          />
          <img
            src="${resource(dir: 'images', file: 'assets/natural-sciences/astronomy/books.png')}"
            alt="books"
            class="h-[200px] w-[150px] pr-2 hover-pop cursor-pointer"
            onclick="window.location.href = '${createLink(controller: 'search', action: 'results', params: [categoryFkId: 51, docType: 1])}'"
          />
          <img
            src="${resource(dir: 'images', file: 'assets/natural-sciences/astronomy/articles.png')}"
            alt="articles"
            class="h-[200px] w-[150px] hover-pop cursor-pointer"
            onclick="window.location.href = '${createLink(controller: 'search', action: 'results', params: [categoryFkId: 51, docType: 3])}'"
          />
        </div>
      </div>
    </div>
</body>
</html>
