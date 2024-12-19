<%
    response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Cache-Control", "no-store");
    response.setDateHeader("Expires", 0);
    response.setHeader("Pragma", "no-cache");
%>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <title>YosCare | Log in</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <link href="/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    %{--<link href="/assets/css/font-awesome.min.css" rel="stylesheet" type="text/css" />--}%
    <link href="/assets/css/style.css" rel="stylesheet" type="text/css"/>

</head>
<style>
html, body {
    height: 94% !important;
}

#wrap {
    min-height: 94% !important;
}

#main {
    overflow: auto;
    /*padding-bottom: 100px; *//* must be same height as the footer */
}

#footer {
    background: #EAEAEC;
    text-align: center;
    position: relative;
    bottom: 0;
    height: 6%;
    clear: both;
    width: 100%;
    margin-bottom: 0;
    font-size: 14px;
}

body {
    background-color: #ACC75E;
}

.input-group-addon {
    background-color: #ffffff;
    /*  background-color: #e0e0e0;
      border: 1px solid #eeeeee;
      border-radius: 2px;*/
    line-height: 1;
    text-align: center;
}
</style>

<body>
<section id="wrapper" class="login-register">
    <div class="login-box">
        <div class="white-box">
            <form action='${postUrl ?: '/login/authenticate'}' method='POST' class="form-horizontal form-material"
                  id="loginform">
                <div class="row">
                    <div class="col-md-12" style="text-align: center">
                        <a href="${createLink(uri: '/')}" class="logo">
                            <img src="${resource(dir: 'images', file: 'logo.png')}" alt="Home" title="Home"/>
                        </a>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12" style="text-align: center">
                        <h3 class="box-title m-b-20">Sign In</h3>
                    </div>
                </div>

                <div class="form-group ">
                    <div class="col-xs-12">
                        <div class="input-group">
                            <span class="input-group-addon" id="sizing-addon"><i class="ti-user"></i></span>
                            <input class="form-control" type="text" required="" placeholder="Username" name="username"
                                   id="username">
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-xs-12">
                        <div class="input-group">
                            <span class="input-group-addon"><i class=" ti-unlock"></i></span></span>

                            <input class="form-control" type="password" required="" placeholder="Password"
                                   name="password" id="password">
                        </div>
                    </div>
                </div>

                <div>
                    <g:if test='${flash.message}'>
                        <div style="color: #c33; text-align: center;">${flash.message}</div>
                    </g:if>
                </div>

                <div class="form-group text-center m-t-20">
                    <div class="col-xs-12">
                        <button class="btn btn-info btn-lg btn-block text-uppercase waves-effect waves-light"
                                type="submit">Log In</button>
                    </div>
                </div>

            </form>
        </div>
    </div>
    <footer class="footer text-center">Version : 2.0.1 | 2017 &copy; Yos Technologies</footer>
</section>
</body>
</html>