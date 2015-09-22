<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script>
function contentsregister(f) {
   var c = confirm('Run it');
   if (c == true){
      f.method='post';
      f.action='contentsregister.bk';
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
    <h1>Simple Contents</h1>
</div>

<!-- Simple Login - START -->
<form class="col-md-12" enctype="multipart/form-data">
		<div class="form-group">
           <input type="text" class="form-control input-lg" placeholder="user_id" name="user_id" value="${loginuser.user_id }" readonly="readonly">
       </div>
       <div class="form-group">
          <select name="category_id" class="form-control input-lg">
             <option value="develop">자기개발</option>
             <option value="travel">여행</option>
             <option value="food">음식</option>
             <option value="sports">스포츠</option>
             <option value="etc">기타</option>
          </select>
       </div>
    
    <div class="form-group">
        <input type="text" class="form-control input-lg" placeholder="contents_title" name="contents_title">
    </div>
    <div class="form-group">
        <input type="file" class="form-control input-lg" placeholder="contents_image1" name="contents_image1">
    </div>
    <div class="form-group">
        <input type="file" class="form-control input-lg" placeholder="contents_image2" name="contents_image2">
    </div>
    <div class="form-group">
        <input type="file" class="form-control input-lg" placeholder="contents_image3" name="contents_image3">
    </div>
    <div class="form-group">
        <input type="text" class="form-control input-lg" placeholder="contents_content" name="contents_content">
    </div>
    
    <div class="form-group">
        <button class="btn btn-primary btn-lg btn-block" onclick="contentsregister(this.form)">Register</button>
        <button class="btn btn-primary btn-lg btn-block" onclick="self.close()">Cancel</button>
    </div>
</form>
<!-- Simple Login - END -->

</body>
</html>