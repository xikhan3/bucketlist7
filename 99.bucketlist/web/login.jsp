<!DOCTYPE html>
<html lang="en">
<script>
function login(f){
   var c = confirm('Go Login?');
   if(c == true){
      f.method='post';
      f.action='login.bk';
      f.submit();
   }
};
</script>
<head>
    <meta charset="utf-8" />
    <title>Login Template | PrepBootstrap</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.min.css" />

    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">

<div class="page-header">
    <h1>Simple Login</h1>
</div>

<!-- Simple Login - START -->
<form class="col-md-12">
    <div class="form-group">
        <input type="text" class="form-control input-lg" placeholder="id" id="user_id" name="user_id">
    </div>
    <div class="form-group">
        <input type="password" class="form-control input-lg" placeholder="Password" id="user_password" name="user_password">
    </div>
  
    <div class="form-group">
        <button class="btn btn-primary btn-lg btn-block" onclick="login(this.form)">Sign In</button>
        <span><a href="#">Need help?</a></span>
        <span class="pull-right"><a href="go.bk?next=join" onclick="alert('Go Register?')">New Registration</a></span>
    </div>
</form>
<!-- Simple Login - END -->

</div>

</body>
</html>