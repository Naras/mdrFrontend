<g:applyLayout name="page">
    <%
        response.setHeader("Cache-Control","no-cache,no-store,must-revalidate")
    %>
    <html>
        <head>
            <meta name="layout" content="page"/>
            <title><g:layoutTitle/></title>
            <g:layoutHead/>
            <style>
                .card .header-primary, .card .content-primary {
                    background: linear-gradient(
                            60deg
                            , #668BA4, #284C62) !important;
                }
        </style>
        </head>
        <body>
        <!-- Preloader - style you can find in spinners.css -->
        <!-- ============================================================== -->
        <div class="preloader">
            <div class="loader">
                <div class="loader__figure"></div>
                %{--<p class="loader__label">Manu Scripts</p>--}%
            </div>
        </div>
            <div id="main-wrapper">
                <g:render template="/common/body_head"/>
                <div class="page-wrapper">
                    <div class="container-fluid">

                        <section class="content">
                            <g:pageProperty name="page.main-content"/>
                        </section><!-- /.content -->
                    </div>
                </div>

                <footer class="footer">
                    <div class="container">
                        Implemented by Samskriti Foundation , Karnataka
                    </div>
                </footer>

            </div><!-- ./wrapper -->
        </body>
    </html>
</g:applyLayout>