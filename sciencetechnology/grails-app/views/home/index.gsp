
<g:applyLayout name="adminlte">
    <head >
        <meta name="layout" content="main">
        <g:set var="pageHeader" value="${message(code: 'default.dashboard.label', default: 'Dashboard')}"/>
        <title><g:message value="${message(code: 'default.dashboard.label', default: 'Dashboard')}"/></title>


    </head>
    <content tag="main-content">


        <g:render template="search_form"/>


        <script>


            $(function () {
                $('#nosearch').DataTable({
                    "paging": true,
                    "lengthChange": false,
                    "searching": false,
                    "ordering": false,
                    "info": false,
                    "autoWidth": false
                });
            });
        </script>
    </content>
</g:applyLayout>