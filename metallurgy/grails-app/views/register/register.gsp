<html>
<head>
	<meta name="layout" content="${layoutRegister}"/>
	<s2ui:title messageCode='spring.security.ui.register.title'/>

	<asset:stylesheet src="application.css"/>
	<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
	<style>
		.s2ui_hidden_button{
			display: none;
		}
        .page-header .container {
            padding-top: 120px;
            color: #FFFFFF;
        }
        .form-control{
            margin-top:0px;
            margin-bottom: 10px !important;
        }
        label{
            font-weight: 400;
            color:#000;
            margin-top: 5px;
        }
        .ui-dialog-titlebar{
            text-align: center;
            padding:1.2em 0em !important;
        }
        .ui-dialog-title{
            font-size: 1.6em;
        }
</style>
</head>
<body>
<nav class="navbar navbar-default navbar-transparent navbar-fixed-top navbar-color-on-scroll" color-on-scroll=" " id="sectionsNav">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<!-- <a class="navbar-brand" href="../presentation.html">Material Kit PRO</a> -->
		</div>

		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav navbar-right">
				<li>
					<a href="">
						About The Project
					</a>
				</li>
				<li>
					<a href="">
						Uniqueness of the Project
					</a>
				</li>
				<li>
					<a href="">
						How to Use this Repository
					</a>
				</li>
				<li>
					<a href="">
						Digital Repository
					</a>
				</li>
				%{--<li>
                    <a href="">
                        Utilities of the Project
                    </a>
                </li>--}%
				<li>
					<a href="http://samskruti.org/" target="_blank">
						About Samskriti Foundation
					</a>
				</li>
				<li>
					<g:link controller="login" action="auth">Login</g:link>
				</li>
			</ul>
		</div>

	</div>
</nav>
<div class="page-header " style="background-image: url('/assets/login-page-bg.png'); background-size: cover; background-position: top center;">
	<div class="container" style="min-height:650px">
		<div class="row">
			<div class="col-md-6 col-md-offset-3 col-sm-12 col-sm-offset-3">
				<div class="card card-signup">
					<s2ui:formContainer type='register' focus='username'>
						<s2ui:form beanName='registerCommand'>
							<g:if test='${emailSent}'>
								<g:message code='spring.security.ui.register.sent'/>
                                <p class="text-center text-success">${raw(flash.message)}</p>
							</g:if>
							<g:else>
                                <p class="text-center text-success"><b>${raw(flash.message)}</b></p>
								%{--<br/>
								<table>
									<tbody>
									<s2ui:textFieldRow class="form-control" name='username' size='40' labelCodeDefault='Username'/>
									<s2ui:textFieldRow class="form-control"  name='email' size='40' labelCodeDefault='E-mail'/>
									<s2ui:passwordFieldRow class="form-control"  name='password' size='40' labelCodeDefault='Password'/>
									<s2ui:passwordFieldRow  class="form-control" name='password2' size='40' labelCodeDefault='Password (again)'/>
									</tbody>
								</table>--}%

								<div class="card-content">
                                    <div class="input-group">
										<span class="input-group-addon">
											<i class="material-icons">face</i>
										</span>
										<s2ui:textFieldRow class="form-control" name='username' size='40' labelCodeDefault='Username'/>
									</div>

									<div class="input-group">
										<span class="input-group-addon">
											<i class="material-icons">email</i>
										</span>
										<s2ui:textFieldRow class="form-control"  name='email' size='40' labelCodeDefault='E-mail'/>
									</div>

									<div class="input-group">
										<span class="input-group-addon">
											<i class="material-icons">lock_outline</i>
										</span>
										<s2ui:passwordFieldRow class="form-control"  name='password' size='40' labelCodeDefault='Password'/>
									</div>

									<div class="input-group">
										<span class="input-group-addon">
											<i class="material-icons">lock_outline</i>
										</span>
										<s2ui:passwordFieldRow  class="form-control" name='password2' size='40' labelCodeDefault='Confirm Password'/>
									</div>

								</div>
								<div class="footer text-center">
									<s2ui:submitButton elementId='submit' class="btn btn-primary btn-round" messageCode='spring.security.ui.register.submit'/>
								</div>

							</g:else>
						</s2ui:form>
					</s2ui:formContainer>
				</div>
			</div>
		</div>
	</div>
	%{--<footer class="footer">
		<div class="container">
			<nav class="pull-left">

			</nav>
			<!-- <div class="copyright pull-right"> -->
			<!-- &copy; <script>document.write(new Date().getFullYear())</script>, made with <i class="fa fa-heart heart"></i> by Creative Tim -->
			<!-- </div> -->
		</div>
	</footer>--}%

</div>



<asset:javascript src="application.js"/>
</body>
</html>
