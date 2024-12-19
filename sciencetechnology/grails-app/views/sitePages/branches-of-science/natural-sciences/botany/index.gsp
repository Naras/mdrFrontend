<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Botany</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Fenix&display=swap" rel="stylesheet"/>
    <script src="https://unpkg.com/lucide@latest"></script>
    <style>
      .bg-full {
        background-image: url("${resource(dir: 'images', file: 'assets/natural-sciences/botany/background.png')}");
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
      <img src="${resource(dir: 'images', file: 'assets/natural-sciences/botany/title_sanskrit.png')}" />
      <img src="${resource(dir: 'images', file: 'assets/natural-sciences/botany/title.png')}" />
      </div>
      <div class="flex justify-between flex-wrap gap-4">
        <p class="text-white text-bold text-3xl max-w-2xl">
        Around 3000 BCE, ancient Indians were highly skilled in manufacturing
        various alloys using metals such as zinc, copper, and mercury, which
        were extensively employed in medicinal preparations for treating various
        ailments. The practice of chemistry dates back to the Vedic times, with
        references found in scriptures and Ayurvedic texts like the Charaka and
        Sushruta Samhitas, as well as in the Artha Shastra and Brihat Samhita.
        This was also reflected in other fields like glass making, pottery,
        jewellery, perfume making, showcasing the knowledge and artisanship of
        our ancestors.
        </p>
        <div class="flex justify-evenly flex-wrap items-end mb-4">
          <img
            src="${resource(dir: 'images', file: 'assets/natural-sciences/botany/manuscripts.png')}"
            alt="manuscripts"
            class="h-[200px] w-[250px] hover-pop cursor-pointer"
            onclick="window.location.href = document.URL + 'manuscripts/'"
          />
          <img
            src="${resource(dir: 'images', file: 'assets/natural-sciences/botany/books.png')}"
            alt="books"
            class="h-[200px] w-[150px] pr-2 hover-pop cursor-pointer"
            onclick="window.location.href = document.URL + 'books/'"
          />
          <img
            src="${resource(dir: 'images', file: 'assets/natural-sciences/botany/articles.png')}"
            alt="articles"
            class="h-[200px] w-[150px] hover-pop cursor-pointer"
            onclick="window.location.href = document.URL + 'articles/'"
          />
        </div>
      </div>
    </div>
</body>
</html>
