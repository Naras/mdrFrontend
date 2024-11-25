
<g:applyLayout name="anonlayout">
    <head >
        <meta name="layout" content="main">
        <g:set var="pageHeader" value="${message(code: 'default.dashboard.label', default: 'Dashboard')}"/>
        <title><g:message value="${message(code: 'default.dashboard.label', default: 'Dashboard')}"/></title>


    </head>
    <content tag="main-content">


        <div class="row">
            <div class="col-md-10 col-md-offset-1 ">
                %{--<div class="card" style="padding: 20px 20px;">--}%
                    <div class="title" style="color: black;">
                        <h2 class="title" style="text-align: center;color: black;">Digital repository</h2>
                    </div>
                    <h5 class="description" style="text-align: justify;color: black;">
                        The main objective of the Project is to prepare a classified, Electronic Master descriptive catalogue of Ancient Manuscripts and Books on Indian Metallurgy and Alchemy. This will serve as a ready-reckoner for accessing information about any book / manuscript on Indian Metallurgy and Alchemy, and one can immediately (at the click of button) locate the same based on many parameters such as the type of metal it deals with, language, type of work (commentary / sub-commentary etc.), type of work (original work / translation etc. and also poetry / prose / combination of both etc.) published / unpublished etc. However, this will only give information ‘about’ the work only. On the other hand it would be even better if the end-user of the project would be able to ‘access’ the work itself. From this point of view, it was decided to also expand the scope of the project and make a digital repository of those books and manuscripts. This would go a long way in helping scholars, researchers, students studying and working on Indian Metallurgy and Alchemy to access thousands of works from any location in the world. Presently available knowledge shows us that digital copies of such a large number of works are not available at a single location (either online or any physical library also).

                    </h5>

                %{--</div>--}%
            </div>
        </div>

    </content>
</g:applyLayout>
