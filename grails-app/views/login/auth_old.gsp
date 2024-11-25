<%
    response.setHeader("Cache-Control","no-cache");
    response.setHeader("Cache-Control","no-store");
    response.setDateHeader("Expires", 0);
    response.setHeader("Pragma","no-cache");
%>
<html xmlns="http://www.w3.org/1999/html">
    <head>
        <meta charset="UTF-8">
        <title>YosCare | Log in</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <link href="/assets/css/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="/assets/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="/assets/css/AdminLTE.css" rel="stylesheet" type="text/css" />

    </head>
    <style>
        html, body {
            height: 94% !important;
        }

        #wrap {
            min-height: 94% !important;
        }

        #main {
            overflow:auto;
            /*padding-bottom: 100px; *//* must be same height as the footer */
        }

        #footer {
            background: #EAEAEC;
            text-align: center;
            position: relative;
            bottom: 0;
            height:6%;
            clear:both;
            width: 100%;
            margin-bottom: 0;
            font-size: 14px;
        }
    </style>
    <body class="login-page" style="background: #ffffff;">
    <div id="wrap">
        <div id="main">
            <div class="login-box">
                <div class="login-logo" style="padding-top: 30px; padding-bottom: 10px;">
                    <img src="${resource(dir: 'images', file: 'yoscare.jpg')}" alt="Home" title="Home" style="width: 100%"/>
                </div>
                <div class="login-box-body" style="border-radius: 10px 10px 10px 10px; background: #EAEAEC !important;">
                    <form action='${postUrl ?: '/login/authenticate'}' method='POST'>
                        <div class="form-group" style="padding-top: 15px;">
                            <input type="text" class="form-control" name="username" id="username" placeholder="Username" autofocus/>
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" name="password" id="password" placeholder="Password"/>
                        </div>
                        %{--<div class="form-group">--}%
                        %{--<input type="checkbox" name="remember_me"/> Remember me--}%
                        %{--</div>--}%
                        <div>
                            <g:if test='${flash.message}'>
                                <div style="color: #c33; text-align: center;">${flash.message}</div>
                            </g:if>
                        </div>
                        <div style="padding-top: 10px;">
                            <button type="submit" class="btn bg-light-blue btn-block">Sign In</button>
                        </div>
                    </form>
                </div>

                %{--<div class="margin text-center">--}%
                %{--<img src="../images/Powered_by_MongoDB_2.png"/>--}%
                %{--</div>--}%
            </div>
        </div>
    </div>
    <div id="footer">
        <div style="padding-top: 10px;background: #EAEAEC;">
            © 2015 Powered by <a href="http://yostechnologies.com">Yos Technologies</a>. All rights reserved.
        </div>
    </div>
        <script src="/assets/js/jquery.min.js"></script>
        <script src="/assets/js/bootstrap.min.js" type="text/javascript"></script>
    <script>
        (function() {
            document.forms['loginForm'].elements['${usernameParameter ?: 'username'}'].focus();
        })();
    </script>
    </body>

</html>