
<g:applyLayout name="anonlayout">
    <head >
        <meta name="layout" content="main">
        <g:set var="pageHeader" value="${message(code: 'default.dashboard.label', default: 'Dashboard')}"/>
        <title><g:message value="${message(code: 'default.dashboard.label', default: 'Dashboard')}"/></title>


    </head>
    <content tag="main-content">


        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                %{--<div class="card" style="padding: 20px 20px;">--}%
                    <div class="title" style="color: black;">
                        <h2 class="title" style="text-align: center;color: black;">Achievements of the Project</h2>
                    </div>
                    <h5>
                        Information about around …. documents - …. books, …. manuscripts and …. articles has been collected and uploaded into the database. Most of the documents also contain summary, Table of contents, author and publication details and images wherever applicable and available.
                        A user-friendly, attractive website, having easy navigation facilities containing details of around … documents (manuscripts / books / articles) on Indian Metallurgy and Alchemy with basic search facilities like Name of the work / Author / Topic / sub-categories etc. is achieved.
                        This has been made available online and currently available at the concerned website.
                    </h5>

                %{--</div>--}%
            </div>
        </div>

    </content>
</g:applyLayout>
