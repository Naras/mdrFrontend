<%@ page import="org.apache.commons.lang3.StringUtils; com.yostech.yoscare.util.ManuscriptWorkType" %>
<g:applyLayout name="adminlte">
    <head >
        <meta name="layout" content="main">
        <g:set var="pageHeader" value="${message(code: 'default.dashboard.label', default: 'Dashboard')}"/>
        <title><g:message value="${message(code: 'default.dashboard.label', default: 'Dashboard')}"/></title>

        %{--<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.16/datatables.min.css"/>

        <script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.16/datatables.min.js"></script>--}%

        <!-- Add LightBox CSS files -->

        <asset:stylesheet href="lightgallery.css"/>
        <asset:stylesheet href="font-awesome.css"/>
        <style type="text/css">

        .demo-gallery > ul {
            margin-bottom: 0;
        }
        .demo-gallery > ul > li {
            float: left;
            margin-bottom: 15px;
            margin-right: 20px;
            width: 200px;
        }
        .demo-gallery > ul > li a {
            border: 3px solid #FFF;
            border-radius: 3px;
            display: block;
            overflow: hidden;
            position: relative;
            float: left;
        }
        .demo-gallery > ul > li a > img {
            -webkit-transition: -webkit-transform 0.15s ease 0s;
            -moz-transition: -moz-transform 0.15s ease 0s;
            -o-transition: -o-transform 0.15s ease 0s;
            transition: transform 0.15s ease 0s;
            -webkit-transform: scale3d(1, 1, 1);
            transform: scale3d(1, 1, 1);
            height: 100%;
            width: 100%;
        }
        .demo-gallery > ul > li a:hover > img {
            -webkit-transform: scale3d(1.1, 1.1, 1.1);
            transform: scale3d(1.1, 1.1, 1.1);
        }
        .demo-gallery > ul > li a:hover .demo-gallery-poster > img {
            opacity: 1;
        }
        .demo-gallery > ul > li a .demo-gallery-poster {
            background-color: rgba(0, 0, 0, 0.1);
            bottom: 0;
            left: 0;
            position: absolute;
            right: 0;
            top: 0;
            -webkit-transition: background-color 0.15s ease 0s;
            -o-transition: background-color 0.15s ease 0s;
            transition: background-color 0.15s ease 0s;
        }
        .demo-gallery > ul > li a .demo-gallery-poster > img {
            left: 50%;
            margin-left: -10px;
            margin-top: -10px;
            opacity: 0;
            position: absolute;
            top: 50%;
            -webkit-transition: opacity 0.3s ease 0s;
            -o-transition: opacity 0.3s ease 0s;
            transition: opacity 0.3s ease 0s;
        }
        .demo-gallery > ul > li a:hover .demo-gallery-poster {
            background-color: rgba(0, 0, 0, 0.5);
        }
        .demo-gallery .justified-gallery > a > img {
            -webkit-transition: -webkit-transform 0.15s ease 0s;
            -moz-transition: -moz-transform 0.15s ease 0s;
            -o-transition: -o-transform 0.15s ease 0s;
            transition: transform 0.15s ease 0s;
            -webkit-transform: scale3d(1, 1, 1);
            transform: scale3d(1, 1, 1);
            height: 100%;
            width: 100%;
        }
        .demo-gallery .justified-gallery > a:hover > img {
            -webkit-transform: scale3d(1.1, 1.1, 1.1);
            transform: scale3d(1.1, 1.1, 1.1);
        }
        .demo-gallery .justified-gallery > a:hover .demo-gallery-poster > img {
            opacity: 1;
        }
        .demo-gallery .justified-gallery > a .demo-gallery-poster {
            background-color: rgba(0, 0, 0, 0.1);
            bottom: 0;
            left: 0;
            position: absolute;
            right: 0;
            top: 0;
            -webkit-transition: background-color 0.15s ease 0s;
            -o-transition: background-color 0.15s ease 0s;
            transition: background-color 0.15s ease 0s;
        }
        .demo-gallery .justified-gallery > a .demo-gallery-poster > img {
            left: 50%;
            margin-left: -10px;
            margin-top: -10px;
            opacity: 0;
            position: absolute;
            top: 50%;
            -webkit-transition: opacity 0.3s ease 0s;
            -o-transition: opacity 0.3s ease 0s;
            transition: opacity 0.3s ease 0s;
        }
        .demo-gallery .justified-gallery > a:hover .demo-gallery-poster {
            background-color: rgba(0, 0, 0, 0.5);
        }
        .demo-gallery .video .demo-gallery-poster img {
            height: 48px;
            margin-left: -24px;
            margin-top: -24px;
            opacity: 0.8;
            width: 48px;
        }
        .demo-gallery.dark > ul > li a {
            border: 3px solid #04070a;
        }
        .home .demo-gallery {
            padding-bottom: 80px;
        }
        </style>


        %{--LightBox gallery--}%
       <!-- <script type="text/javascript">
            jQuery(function($) {
                $(document).on('click', '.lightboxgallery-gallery-item', function(event) {
                    event.preventDefault();
                    $(this).lightboxgallery({
                        showCounter: true,
                        showTitle: true,
                        showDescription: true
                    });
                });
            });
        </script>-->
        <asset:stylesheet href="lightboxgallery-min.css" />
        <asset:stylesheet href="justifiedGallery.min.css-min.css" />
    </head>
    <content tag="main-content">

        <script type="text/javascript">


            $(document).ready(function(){
               /* $('#aniimated-thumbnials').lightGallery({
                    thumbnail:true
                });*/
                $('#lightgallery').lightGallery();

            });

            $(".showModal").click(function(e) {
                e.preventDefault();
                var url = $(this).attr("data-href");
              /*  $("#myModal iframe").attr("src", url);
                $("#myModal").modal("show");*/
               // eModal.iframe('http://saribe.github.io/toastr8/', 'Hot news')

            });


            function displayPdf(pdfId) {
		pdfId = pdfId.substr(1)
		console.log("displayPdf:", pdfId)
                var link = "${createLink(controller:"search", action:"displayPdf")}/"+pdfId
                //eModal.iframe('link', 'Hot news')
                $("#myModal iframe").attr("src", link);
                $("#myModal").modal("show");
            }
        </script>

        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <h2 class="card-title">${document?.NAME}/${document?.regional_name}</h2>

                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">

                <!-- Tabs with icons on Card -->
                <div class="card card-nav-tabs">
                    <div class="header header-primary">
                        <!-- colors: "header-primary", "header-info", "header-success", "header-warning", "header-danger" -->
                        <div class="nav-tabs-navigation">
                            <div class="nav-tabs-wrapper">
                                <ul class="nav nav-tabs" data-tabs="tabs">
                                    <li class="active">
                                        <a href="#basicinfo" data-toggle="tab" aria-expanded="true">
                                            Basic Info
                                            <div class="ripple-container"></div></a>
                                    </li>
                                    %{--<li class="">
                                        <a href="#authorinfo" data-toggle="tab" aria-expanded="false">
                                            Author Info./Scribe Info.
                                            <div class="ripple-container"></div></a>
                                    </li>
                                    <li class="">
                                        <a href="#nmm" data-toggle="tab" aria-expanded="false">
                                            NMM
                                            <div class="ripple-container"></div></a>

                                    </li>
                                    <li class="">
                                        <a href="#additonalinfo" data-toggle="tab" aria-expanded="false">
                                            Additional Info.
                                            <div class="ripple-container"></div></a>

                                    </li>--}%
                                    <g:if test="${imageResults!=null && imageResults.size()>0}">
                                        <li class="">
                                            <a href="#images" data-toggle="tab" aria-expanded="false">
                                                Images
                                                <div class="ripple-container"></div></a>

                                        </li>
                                    </g:if>


                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="card-content">
                        <div class="tab-content">
                            <div class="tab-pane active" id="basicinfo">
                                <div class="row">
                                    <div class="form-group col-md-6 m-t-5">
                                        <label class="col-md-3">Document ID</label>

                                    </div>
                                    <div class="form-group col-md-6 m-t-5">
                                        <label class="col-md-3">Name(in Diacritical)</label>
                                        <h4 style="color:#35465c;font-weight: bold;">${document?.diacritical_name}</h4>
                                    </div>
                                    <div class="form-group col-md-6 m-t-5">
                                        <label class="col-md-3">Book Name</label>
                                        ${document?.NAME}
                                    </div>
                                    <div class="form-group col-md-6 m-t-5">
                                        <label class="col-md-3">Name(in Vernacular)</label>
                                        <h4 style="color:#35465c;font-weight: bold;">${document?.regional_name}</h4>
                                    </div>
                                </div>
                                <h3>Work Details</h3>
                                <hr/>
                                <div class="row">
                                    <div class="form-group col-md-6 m-t-5">
                                        <label class="col-md-3">Language</label>
                                        <h4 style="color:#35465c;font-weight: bold;"> ${document?.languageName}</h4>
                                    </div>
                                    <div class="form-group col-md-6 m-t-5">
                                        <label class="col-md-3">Script</label>
                                        ${document?.scriptName}
                                    </div>
                                    <div class="form-group col-md-6 m-t-5">
                                        <label class="col-md-3">Subject</label>
                                        ${document?.categoryName}
                                    </div>
                                    <div class="form-group col-md-6 m-t-5">
                                        <label class="col-md-3">Type</label>
                                        ${document?.TYPE_OF_WORK>0?com.yostech.yoscare.util.ManuscriptWorkType.fromValue((short)(document?.TYPE_OF_WORK-1)):''}
                                    </div>
                                    <div class="form-group col-md-6 m-t-5">
                                        <label class="col-md-3">Specific Category</label>
                                        ${document?.specificcategory}
                                    </div>
                                    <div class="form-group col-md-6 m-t-5">
                                        <label class="col-md-3">Source Of Catalogue</label>
                                        ${g.message(code: "book.sourcecatalouge.${document?.source_of_catalogue}", args: [])}

                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-md-6 m-t-5">
                                        <label class="col-md-3">Summary</label>
                                    </div>
                                </div>
                                <div class="">
                                    <div class="col-md-12 m-t">
                                        ${document?.SUMMARY}
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="form-group col-md-6 m-t-5">
                                        <label class="col-md-3">Table Of Contents</label>
                                    </div>
                                </div>
                                <div class="">
                                    <div class="col-md-12 m-b-2">
                                        ${document?.table_of_contents}
                                    </div>
                                </div>
                                <h3>Specific Contribution</h3>
                                <hr/>
                                <div class="row">
                                    <div class="form-group col-md-6 m-t-5">
                                        <label class="col-md-3">To Subject</label>
                                    </div>
                                </div>
                                <div class="">
                                    <div class="col-md-12 m-b-2">
                                        ${document?.toSubject}
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-md-6 m-t-5">
                                        <label class="col-md-3">Uniqueness of Work</label>
                                    </div>
                                </div>
                                <div class="">
                                    <div class="col-md-12 m-b-2">
                                        ${document?.uniquessOfWork}
                                    </div>
                                </div>

                                source_of_catalogue
                                <div class="row">
                                    <div class="form-group col-md-6 m-t-5">
                                        <label class="col-md-3">Other Details</label>
                                    </div>
                                </div>
                                <div class="">
                                    <div class="col-md-12 m-b-2">
                                        ${document?.any_other_details}
                                    </div>
                                </div>
                            </div>


                            <div class="tab-pane" id="images">

                                <div class="demo-gallery">

                                    <ul id="lightgallery" class="list-unstyled row">
                                        <g:each in="${imageResults}" var="image">
                                            <g:if test="${!StringUtils.contains(image.filePath,".pdf")}">
                                                <li class="col-xs-6 col-sm-4 col-md-3" data-responsive="" data-src="${createLink(controller:"search", action:"displayImage", id:"${image.id}", params:['isThumbnail':true,'width':200,'height':200])}" data-sub-html="">
                                                    <a href="">
                                                        <img class="img-responsive" src="${createLink(controller:"search", action:"displayImage", id:"${image.id}", params:['isThumbnail':true,'width':200,'height':200])}">
                                                    </a>
                                                </li>
                                            </g:if>

                                        </g:each>
                                    </ul>


                                    <ul id="pdfgallery" class="list-unstyled row">
                                        <g:each in="${imageResults}" var="image">
	
                                            <g:if test="${StringUtils.contains(image.filePath,".pdf")}">
						<p>Debug: id: ${image.id} path: ${image.filePath}</p>

                                                <li class="col-xs-6 col-sm-4 col-md-3 showModal"  data-src-pdf="${createLink(controller:"search", action:"displayPdf", id:"${image.id}")}" data-sub-html="">
                                                    %{--
                                                          <img class="img-responsive" src="${createLink(controller:"search", action:"displayPdf", id:image.id}}">
                                                      </a>--}%
                                                    <a href="#"  onclick="displayPdf('${image.filePath}')" >
                                                        <i class='fa fa-file-pdf-o' style='font-size:15rem;color:red;font-weight:normal;' aria-hidden='true'></i>
                                                    </a>
                                                </li>
                                            </g:if>
                                        </g:each>
                                    </ul>

                                </div>
                            </div>

                               %{-- <div class="row">
                                    <ul class="gallery lightgallery lightboxgallery-gallery clearfix">
                                        <g:each in="${imageResults}" var="image">
                                            <li class="col-xs-6 col-sm-4 col-md-3" data-responsive="img/1-375.jpg 375, img/1-480.jpg 480, img/1.jpg 800" data-src="${createLink(controller:"search", action:"displayImage", id:"${image.id}", params:['isThumbnail':true,'width':200,'height':200])}" data-sub-html="">
                                                <a href="">
                                                    <img class="img-responsive" src="${createLink(controller:"search", action:"displayImage", id:"${image.id}", params:['isThumbnail':true,'width':200,'height':200])}">
                                                </a>
                                            </li>
                                        </g:each>
                                    </ul>
                                </div>--}%
                           %{-- <div class="row">
                                <div class="demo-gallery mrb50">
                                    <div id="aniimated-thumbnials" class="list-unstyled">
                                        <g:each in="${imageResults}" var="image">
                                            <a href="${createLink(controller:"search", action:"displayImage", id:"${image.id}", params:['isThumbnail':true,'width':200,'height':200])}">
                                                <img src="${createLink(controller:"search", action:"displayImage", id:"${image.id}", params:['isThumbnail':true,'width':200,'height':200])}" />
                                            </a>

                                        </g:each>
                                    </div>
                                </div>
                            </div>--}%
                                %{--<div class="demo-gallery">
                                    <ul id="lightgallery" class="list-unstyled row">
                                        <g:each in="${imageResults}" var="image">
                                            <li class="col-xs-6 col-sm-4 col-md-3" data-responsive="img/1-375.jpg 375, img/1-480.jpg 480, img/1.jpg 800" data-src="img/1-1600.jpg" data-sub-html="<h4>Fading Light</h4><p>Classic view from Rigwood Jetty on Coniston Water an old archive shot similar to an old post but a little later on.</p>">
                                                <a href="">
                                                     <img  class="img-responsive" src="${createLink(controller:"search", action:"displayImage", id:"${image.id}", params:['isThumbnail':true,'width':200,'height':200])}" title="${image.id}" alt="${image.id}">
                                                </a>
                                            </li>
                                        </g:each>

                                    </ul>
                                </div>--}%
                            </div>

                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Tabs with icons on Card -->

            </div>
        </div>

    <div class="modal fade" id="myModal">
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content" style="width:1100px">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">PDF</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <!-- Modal body -->
                <div class="modal-body">
                    <iframe src="" width="1024" height="600" frameborder="0" allowtransparency="true"></iframe>
                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>

            </div>
        </div>


    </div>
            <script src="https://cdn.jsdelivr.net/picturefill/2.3.1/picturefill.min.js"></script>

            <asset:javascript src="lightgallery-all.js" />
            <asset:javascript src="jquery.mousewheel.min.js" />
            <script src="https://unpkg.com/emodal@1.2.69/dist/eModal.min.js" />

        </content>
</g:applyLayout>
