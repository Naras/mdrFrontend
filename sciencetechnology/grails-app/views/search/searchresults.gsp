<g:applyLayout name="adminlte">
    <head >
        <meta name="layout" content="main">
        <g:set var="pageHeader" value="${message(code: 'default.dashboard.label', default: 'Dashboard')}"/>
        <title><g:message value="${message(code: 'default.dashboard.label', default: 'Dashboard')}"/></title>
        <asset:javascript src="select2.css"/>%{--
        <asset:javascript src="select2-bootstrap.css"/>
--}%
        <asset:javascript src="select2.js"/>

    </head>
    <content tag="main-content">
        <g:render template="/home/search_form"/>
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">
                            Search
                            <div class="float:right;">
                                Total Results: ${results?.size()}
                            </div>
                        </h4>
                        <table id="datatable" class="display datatable" style="width:100%">
                            <thead>
                            <tr>
                                <th>Document name</th>
                                <th>Document Type</th>
                                <th>Author</th>
                                <th>View</th>
                            </tr>
                            </thead>
                            <tbody>
                            <g:each in="${results}" var="document">

                                <tr>
                                    <td>
                                        ${document?.documentName}<br/>
                                        ${document?.regionalName}
                                    </td>
                                    <td>${g.message(code: "book.type.${document?.documentType}", args: [])}</td>
                                    <td>
                                        ${document?.author}<br/>${document?.authorRegionalName}
                                    </td>
                                    <td>
                                        <g:link class="btn btn-primary btn-fill" controller="search" action="viewManuScript" id="${document?.documentId}" target="_blank">View</g:link>
                                    </td>
                                </tr>
                            </g:each>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>




        <script>

            $(function () {
                $('.datatable').DataTable({
                    "paging": true,
                    "lengthChange": false,
                    "searching": true,
                    "ordering": false,
                    "info": true,
                    "autoWidth": false
                });
            });
        </script>
    </content>
</g:applyLayout>