<%-- page import="com.yostech.yoscare.SearchableField;  com.yostech.yoscare.Patients;com.yostech.yoscare.Users;" --%>
<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="Yos Pharmacy"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'layout.css')}" type="text/css">
    <!--<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css"> -->
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'jquery.lightbox-0.5.css')}" type="text/css">
    %{--<r:require module="core"/>--}%
    <g:layoutHead/>
    <%-- <r:require modules="uploadr"/> --%>

    <link href="${resource(dir: 'css/bootstrap', file: 'bootstrap.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css/bootstrap', file: 'bootstrap-responsive.css')}" rel="stylesheet">
    <g:javascript src="datatables/js/jquery.dataTables.js"/>

    <link rel="stylesheet" href="${resource(dir: 'js/datatables/css', file: 'demo_table.css')}" type="text/css">

</head>

<body>
<div id="maincontainer">
    <div id="topsection">
        <div class="header-logo">
            <a href="http://yoscare.in"><img src="${resource(dir: 'images', file: 'yoscare.jpg')}" alt="Yoscare"/></a>
            <%--Clinical Data Management Exchange--%>
        </div>

        <div class="header-info">
            <sec:ifLoggedIn>
                <div class="user-info">
                    <a id="topusername" rel="popover" href="#" data-original-title="<sec:username/>">
                        <span class="login-name">Welcome <user:userName/>, <user:orgName/></span>
                        %{--<b class="caret"></b>--}%
                    </a>
                    <div id="login-content" style="display: none;">
                        <ul class="login-popover-ul">
                            <li><g:link controller="users" action="myprofile">My Profile</g:link></li>
                            <li><g:link controller="users" action="showchangepassword" class="changepassword" id="changepassword">Change Password</g:link></li>
                            <li><g:link controller="users" action="showUserConfig"  id="mysettings">My Settings</g:link></li>
                            <li><g:link class="logout"  controller="logout" id="logout">Logout</g:link></li>
                        </ul>
                        %{--<ul class="login-popover-ul">--}%
                            %{--<li>Expires on <user:orgexpirydate/></li>--}%
                        %{--</ul>--}%
                    </div>
                </div>
                <div class="login-info" style="text-align: right;margin-right: 6px;">Last Logged on <user:lastLoggedIn/> </div><br/>
                %{--<div class="login-info" style="text-align: right;margin-right: 6px;">Expires on <user:orgexpirydate/></div>--}%

            </sec:ifLoggedIn>
        </div>
    </div>
    <div id="navbar" role="navigation">
        <span class="inbar">
            <div class="nav">
                <ul>
                    <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                    <sec:ifLoggedIn>
                        <li><g:link class="report" controller="reports" action="index">Reports</g:link></li>
                        <li>
                        <g:link class="config" action="config" controller="configuration">Configuration
                        </g:link>
                        </li>
                       %{-- <li>
                            <g:link class="report" action="list" controller="reminders">Activities
                            </g:link>
                        </li>--}%
                        <li>
                            <g:link class="activity" action="activitiesview" controller="activities">Activities
                            </g:link>
                        </li>
                        <li><g:link class="activity" action="index" controller="opuncategorizedimages">Op Uncategorized Images</g:link></li>

                        %{--<li>--}%
                        %{--<g:link class="config" action="showUserConfig" controller="users">My Settings--}%
                        %{--</g:link>--}%
                        %{--</li>--}%
                        <%-- <li style="float: right;">
                            <g:link class="logout"  controller="logout" id="logout">Logout</g:link>
                        </li>
                        <li style="float: right;">
                            <g:link controller="users" action="showchangepassword" class="changepassword" id="changepassword">Change Password</g:link>
                        </li> --%>
                    </sec:ifLoggedIn>
                </ul>
            </div>

        </span>
    </div>

