<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script>
function usersregister(f) {
   var c = confirm('?');
   if (c == true){
      f.method='post';
      f.action='usersregister.bk';
      f.submit();
   }
};
</script>  
<head>
    <meta charset="utf-8" />
    <title>Join Template | PrepBootstrap</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.min.css" />

    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">

<div class="page-header">
    <h1>Simple Join</h1>
</div>

<!-- Simple Login - START -->
<form class="col-md-12" enctype="multipart/form-data">

    <div class="form-group">
        <input type="text" class="form-control input-lg" placeholder="ID" name="user_id">
    </div>
    <div class="form-group">
        <input type="password" class="form-control input-lg" placeholder="Password" name="user_password">
    </div>
    <div class="form-group">
        <input type="text" class="form-control input-lg" placeholder="Name" name="user_name">
    </div>
    <div class="form-group">
        <input type="text" class="form-control input-lg" placeholder="Email" name="user_email">
    </div>
    <div class="form-group">
    	<input type="file" class="form-control input-lg" placeholder="Image" name="user_image">
    </div>
    <div class="form-group">
        <button class="btn btn-primary btn-lg btn-block" onclick="usersregister(this.form)">Sign In</button>
        <button class="btn btn-primary btn-lg btn-block" onclick="self.close()">Cancel</button>
        
    </div>
</form>
<!-- Simple Login - END -->

</body>
</html>