<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE html>
<html>
<script>
function commentsregister(f) {
   var c = confirm('Run it');
   if (c == true){
      f.method='post';
      f.action='commentsregister.bk';
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
    <h1>Comments Register</h1>
</div>

<!-- Simple Login - START -->
<form class="col-md-12" enctype="multipart/form-data">
	<div class="form-group">
    	<input type="text" class="form-control input-lg" placeholder="contents_id" name="contents_id" value="" readonly="readonly">
    </div>
    <div class="form-group">
        <input type="text" class="form-control input-lg" placeholder="user_id" name="user_id" value="${loginuser.user_id }" readonly="readonly">
        
    </div>
    <div class="form-group">
        <input type="text" class="form-control input-lg" placeholder="comments_content" name="comments_content">
    </div>
    <div class="form-group">
        <input type="file" class="form-control input-lg" placeholder="comments_image" name="comments_image">
    </div>
    <div class="form-group">
        <button class="btn btn-primary btn-lg btn-block" onclick="commentsregister(this.form)">Register</button>
        <button class="btn btn-primary btn-lg btn-block" onclick="self.close()">Cancel</button>
    </div>
</form>
<!-- Simple Login - END -->

</body>
</html>