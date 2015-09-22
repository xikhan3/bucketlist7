<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
	#img01{
		width:100px;
		height:100px;
	}
</style>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Bootstrap Core CSS - Uses Bootswatch Flatly Theme: http://bootswatch.com/flatly/ -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="bootstrap/css/freelancer.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="bootstrap/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<title>Contents List</title>
</head>
<body>
	<h1>Contents List</h1>
	<c:forEach items="${contentslist }" var="contents">
		<c:choose>
			<c:when test="${contents!=null }">
				<table>
				<tr>
					<td rowspan="3"><a href="contentsdetail.bk?id=${contents.contents_id}"><img id="img01" src="img/comments/${contents.contents_image2}"></a></td>
					<td class="navbar-brand"><a href="contentsdetail.bk?id=${contents.contents_id}">제목 : ${contents.contents_title }</a></td>
				</tr>
				<tr>
					<td class="navbar-brand">내용 : ${contents.contents_content}</td> 
				</tr>
				<tr>
					<td class="navbar-brand"><a href="contentsdelete.bk?user_id=${contents.user_id}">삭제하기</a></td> 
				</tr>
				</table>
			</c:when>
		</c:choose>
	</c:forEach>
	
</body>
</html>