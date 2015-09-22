<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
	#img02{
		width:300px;
		height:200px;
	}
</style>
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

<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
 <meta charset="utf-8" />
    <title>Join Template | PrepBootstrap</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.min.css" />

    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<h1>Bucketlist Detail</h1>
<body>
<h1><a href="contentsupdate.bk?id=${contentsdetail.contents_id}">수정하기</a></h1>

<h3>${contentsdetail.category_id}</h3>
<h3>제목 : ${contentsdetail.contents_title}</h3>
<img id="img02" src="img/contents/${contentsdetail.contents_image1}"><br>
<img id="img02" src="img/contents/${contentsdetail.contents_image2}"><br>
<img id="img02" src="img/contents/${contentsdetail.contents_image3}"><br>
<h3>내용 : ${contentsdetail.contents_content}</h3>
<h3>목표날짜 : ${contentsdetail.contents_goaldate}</h3>
<h3>수정날짜 : ${contentsdetail.contents_regdate}</h3>

	<h1>Comments List</h1>
	<c:forEach items="${commentslist }" var="comments">
	<table>
	<tr>
		<td rowspan="3"><img id="img01" src="img/comments/${comments.comments_image}"></td>
		<td class="navbar-brand">댓글 아이디 : ${comments.user_id }</td>
	</tr>
	<tr>
		<td class="navbar-brand">댓글 내용 : ${comments.comments_content}</td> 
	</tr>
	<tr>
		<td class="navbar-brand"><a href="commentsdelete.bk?user_id=${comments.user_id}">삭제하기</a></td> 
	</tr>
	</table>
	</c:forEach>


<form class="col-md-12" enctype="multipart/form-data">
	<div class="form-group">
    	<input type="hidden" class="form-control input-lg" name="contents_id" value="${contentsdetail.contents_id}">
    </div>
    <div class="form-group">
        <input type="hidden" class="form-control input-lg" name="user_id" value="${loginuser.user_id }"> 
    </div>
    <div class="form-group">
        <input type="text" class="form-control input-lg" placeholder="comment" name="comments_content">
    </div>
    <div class="form-group">
        <input type="file" class="form-control input-lg" name="comments_image">
    </div>
    <div class="form-group">
        <button class="btn btn-primary btn-lg btn-block" onclick="commentsregister(this.form)">Register</button>
        <button class="btn btn-primary btn-lg btn-block" onclick="self.close()">Cancel</button>
    </div>
</form>

</body>
</html>