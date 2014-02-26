<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}">

    <title>Polling - Signin</title>

    <link rel="stylesheet" href="${resource(dir: 'css/bootstrap', file: 'bootstrap.min.css')}" type="text/css">

    <!-- Custom styles for this template -->
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'signin.css')}" type="text/css">


</head>

<body>

<div class="container">
    <g:if test='${flash.message}'>
        <div class='login_message alert-danger '> <i class="icon-bell red"> <b> ${flash.message} </b> </i></div>
    </g:if>
    <form action='${postUrl}'  role="form" method='POST' id='loginForm' class='form-signin ' autocomplete='off'>
        <h2 class="form-signin-heading">Please sign in</h2>
        <input type="email" name='j_username' id='username' class="form-control" placeholder="Email address" required autofocus>
        <input type="password" class="form-control" name='j_password' id='password' placeholder="Password" required>
        <label class="checkbox">
            <input type="checkbox" value="remember-me"> Remember me
        </label>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
    </form>

</div> <!-- /container -->


<!-- Bootstrap core JavaScript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
</body>
</html>
