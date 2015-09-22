<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script>
function usersregister(f) {
	var c = confirm('등록 하시겠습니까?');
	if (c == true){
		f.method='post';
		f.action='usersregister.bk';
		f.submit();
	}
};
</script>  
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>Bootstrap Login Form</title>
		<meta name="generator" content="Bootply" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<!--[if lt IE 9]>
			<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<!-- <link href="bootstrap/css/styles.css" rel="stylesheet"> -->
	</head>
	<body>
		<!--login modal-->
		<div id="usersregister" class="modal show" tabindex="-1" role="dialog" aria-hidden="true">
		  <div class="modal-dialog">
			  <div class="modal-content">
			      <div class="modal-header">
			          <h1 class="text-center">회원가입</h1>
			      </div>
			      <div class="modal-body">
			          <form role="form" class="form col-md-12 center-block" enctype = "multipart/form-data">
			            <div class="form-group">
			              <input type="text" class="form-control input-lg" placeholder="Id" name="user_id">
			            </div>
			            <div class="form-group">
			              <input type="password" class="form-control input-lg" placeholder="Password" name="user_password">
			            </div>
			            <div class="form-group">
			              <input type="text" class="form-control input-lg" placeholder="Name" name="user_name">
			            </div>
			            <div class="form-group">
			              <input type="email" class="form-control input-lg" placeholder="Email" name="user_email">
			            </div>
			            <div class="form-group">
			              <input type="file" class="form-control input-lg" placeholder="Image" name="user_image">
			            </div>
			            <button class="btn btn-default" data-dismiss="modal" aria-hidden="true" onclick="usersregister(this.form)">가입</button>
				        <button class="btn btn-default" onclick="self.close()">취소</button>
			          </form>
			      </div>
			  </div>
		  </div>
		</div>
		<!-- script references -->
		<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
		<script src="bootstrap/js/bootstrap.min.js"></script>
	</body>
</html>