<!DOCTYPE html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Bootstrap business-plate template"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="${resource(dir: 'css/bootstrap', file: 'bootstrap.min.css')}" type="text/css">
     <!-- CSS Implementing Plugins -->
        %{--<link rel="stylesheet" href="${resource(dir: 'css/custom', file: 'flexslider.css')}" type="text/css" media="screen">--}%
        %{--<link rel="stylesheet" href="${resource(dir: 'css/custom', file: 'parallax-slider.css')}" type="text/css">--}%
        <link rel="stylesheet" href="${resource(dir: 'css/font-awesome-4.0.3', file: 'font-awesome.min.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css/bootstrap/', file: 'bootstrap-modal.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css/bootstrap', file: 'bootstrap-modal-bs3patch.css')}" type="text/css">

        %{--css for pop up--}%
        %{--<link rel="stylesheet" href="${resource(dir: 'css/custom/popup', file: 'jquery.ui.all.css')}" type="text/css">--}%
        %{--<link rel="stylesheet" href="${resource(dir: 'css/custom/popup', file: 'demos.css')}" type="text/css">--}%
        <!-- Custom styles for this template -->
    <!-- Custom styles for this template -->

    <link href="${resource(dir: 'css/custom', file: 'business-plate.css')}" rel="stylesheet">
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}">
        <g:layoutHead/>
        <g:javascript library="application"/>
        <r:require modules="jquery"/>
        <r:layoutResources />
        <style type="text/css">
            body {
                /*height: 100%;*/
                overflow-x: hidden;
            }
        </style>
	</head>
	    <body>
        <div class="top">
        <div class="container">
            <div class="row-fluid">
                <ul class="phone-mail">
                <sec:ifLoggedIn>
                    <li><i class="fa fa-envelope"></i><span>Wellcome <sec:loggedInUserInfo field="username"/></span></li>
                </sec:ifLoggedIn>
                <sec:ifNotLoggedIn>
                    <li><i class="fa fa-envelope"></i><span>Wellcome Guest</span></li>
                </sec:ifNotLoggedIn>
                </ul>
                <ul class="loginbar">
                    <li><a href="#" class="login-btn">Help</a></li>
                    <li class="devider">&nbsp;</li>
                    <sec:ifLoggedIn>
                        <li><a href="${g.createLink(controller: 'logout')}" class="login-btn">Log out</a></li>
                    </sec:ifLoggedIn>
                    <sec:ifNotLoggedIn>
                        <li><a href="${g.createLink(controller: 'login')}" class="login-btn">Login</a></li>
                    </sec:ifNotLoggedIn>

                </ul>
            </div>
        </div>
    </div>

    <!-- topHeaderSection -->
    <div class="topHeaderSection">
        <div class="header">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="${g.createLink(uri: '/')}"><img src="${resource(dir: 'images/custom', file: 'logo.png')}" alt="My web solution" /></a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">

                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a href="${g.createLink(uri: '/')}">Home</a></li>

                        <sec:access controller='manage'>
                            <li><a href="${g.createLink(controller: 'manage')}">Manage Poll</a></li>
                        </sec:access>
                        <sec:access controller='dashboard'>
                            <li><a href="${g.createLink(controller: 'dashboard')}">My Poll</a></li>
                        </sec:access>
                        <li><a href="${g.createLink(controller: 'showpolls')}">Participate</a></li>
                        <li><a href="#contact">Contact</a></li>
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </div>
    </div>


        <g:layoutBody/>

    <!-- footerTopSection -->
    %{--<div class="footerTopSection">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <h3>About </h3>
                    <p>
                        Best service provicer for<br>
                        <strong>web and application </strong> design and development.
                    </p>

                    <h3>Monthly news letter</h3>
                    <p>If you intended to get monthly newsletters and offers from us?</p>
                    <div>
                        <form class="form-inline" role="form">
                            <div class="form-group">
                                <label class="sr-only" for="exampleInputEmail2">Email address</label>
                                <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Enter email">
                            </div>
                            <button type="submit" class="btn btn-brand">Subscribe</button>
                        </form>
                    </div>

                </div>
                <div class="col-md-3">
                    <h3>Recent NEWS </h3>
                    <p>
                        Best service provicer for<br>
                        <strong>web and application </strong> design and development.
                    </p>
                    <p>
                        Best service provicer for<br>
                        <strong>web and application </strong> design and development.
                    </p>
                    <p>
                        Best service provicer for<br>
                        <strong>web and application </strong> design and development.
                    </p>
                </div>
                <div class="col-md-3">
                    <h3>Useful Links</h3>
                    <p>
                        <span>This may be the very useful and quick link for proper information</span><br><br>
                        <a href="#">Our Services</a><br>
                        <a href="#">About us</a><br>
                        <a href="#">Our Network</a><br>
                        <a href="#">Our Products</a><br>
                    </p>
                    <h3>Friends</h3>
                    <p>
                        <a href="#">Yahoo.com</a><br>
                        <a href="#">Canon</a>
                    </p>

                </div>
                <div class="col-md-3">
                    <h3>Contact us</h3>
                    <p>
                        <strong>Business plate Ltd.</strong><br>
                        480 Bridgewater Road, London, W1<br>
                        United Kingdon<br>
                        P : +44 (0) 1234567890<br>
                        E : info@businessplate.com<br>
                        W :	www.businessplate.com<br>
                    </p>
                    <h3>Stay Connected</h3>
                    <p>
                        We are available at all social networks
                    </p>
                    F , t, G, T, Ln, P, Y
                </div>
            </div>
        </div>
    </div>--}%
    <!-- footerBottomSection -->
    <div class="footerBottomSection">
        <div class="container">
        &copy; 2014, Allright reserved. <a href="#">Terms and Condition</a> | <a href="#">Privacy Policy</a>
            <div class="pull-right"> <a href="index.html"><img src="${resource(dir: 'images/custom', file: 'logo1.png')}" alt="My web solution" /></a></div>
        </div>
    </div>

    <!-- JS Global Compulsory -->
    %{--<script type="text/javascript" src="${resource(dir: 'js/custom', file: 'jquery-1.8.2.min.js')}"></script>--}%
    %{--<script type="text/javascript" src="${resource(dir: 'js/custom', file: 'modernizr.custom.js')}"></script>--}%
    <script type="text/javascript" src="${resource(dir: 'js/bootstrap', file: 'bootstrap.min.js')}"></script>

    <!-- JS Implementing Plugins -->
    %{--<script type="text/javascript" src="${resource(dir: 'js/custom', file: 'repeatable-fields.js')}"></script>--}%
    %{--<script type="text/javascript" src="${resource(dir: 'js/custom', file: 'jquery.flexslider-min.js')}"></script>--}%
    %{--<script type="text/javascript" src="${resource(dir: 'js/custom', file: 'modernizr.js')}"></script>--}%
    %{--<script type="text/javascript" src="${resource(dir: 'js/custom', file: 'jquery.cslider.js')}"></script>--}%
    %{--<script type="text/javascript" src="${resource(dir: 'js/custom', file: 'back-to-top.js')}"></script>--}%
    %{--<script type="text/javascript" src="${resource(dir: 'js/custom', file: 'jquery.sticky.js')}"></script>--}%


    <!-- JS Page Level -->
    %{--<script type="text/javascript" src="${resource(dir: 'js/custom', file: 'app.js')}"></script>--}%
    %{--<script type="text/javascript" src="${resource(dir: 'js/custom', file: 'index.js')}"></script>--}%

        %{--js for pop up--}%

        %{--<script type="text/javascript" src="${resource(dir: 'js/custom/popup', file: 'jquery.ui.core.js')}"></script>--}%
        %{--<script type="text/javascript" src="${resource(dir: 'js/custom/popup', file: 'jquery.ui.widget.js')}"></script>--}%
        %{--<script type="text/javascript" src="${resource(dir: 'js/custom/popup', file: 'jquery.ui.mouse.js')}"></script>--}%
        %{--<script type="text/javascript" src="${resource(dir: 'js/custom/popup', file: 'jquery.ui.button.js')}"></script>--}%
        %{--<script type="text/javascript" src="${resource(dir: 'js/custom/popup', file: 'jquery.ui.draggable.js')}"></script>--}%
        %{--<script type="text/javascript" src="${resource(dir: 'js/custom/popup', file: 'jquery.ui.position.js')}"></script>--}%
        %{--<script type="text/javascript" src="${resource(dir: 'js/custom/popup', file: 'jquery.ui.resizable.js')}"></script>--}%
        %{--<script type="text/javascript" src="${resource(dir: 'js/custom/popup', file: 'jquery.ui.button.js')}"></script>--}%
        %{--<script type="text/javascript" src="${resource(dir: 'js/custom/popup', file: 'jquery.ui.dialog.js')}"></script>--}%
        %{--<script type="text/javascript" src="${resource(dir: 'js/custom/popup', file: 'jquery.ui.effect.js')}"></script>--}%


    %{--<script type="text/javascript">
        jQuery(document).ready(function() {
            App.init();
            App.initSliders();
            Index.initParallaxSlider();
        });

    </script>--}%

<r:layoutResources />
</body>
</html>