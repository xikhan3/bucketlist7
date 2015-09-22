<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
	#img01{
		width:400px;
		height:300px;
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
   <!-- Portfolio Grid Section -->
    <section id="portfolio">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Contents List</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
            	<c:forEach items="${contentslist }" var="contents">
            		<c:choose>
            			<c:when test="${contents!=null }">
            				<div class="col-sm-4 portfolio-item">
			                    <a href="contentsdetail.bk?id=${contents.contents_id}" class="portfolio-link">
			                        <div class="caption">
			                            <div class="caption-content">
			                                <i class="fa fa-search-plus fa-3x"></i>
			                            </div>
			                        </div>
			                        <img id="img01" src="img/contents/${contents.contents_image1}" class="img-responsive">
			                   		<div id="layer1" style="position:absolute; left:20px; top:20px; width:200px; height:100px; z-index:1; border-width:1px; border-style:none;"><p>TITLE : ${contents.contents_title }</p></div>
			                    </a>
			                </div>
            			</c:when>
            			<c:otherwise>
            			</c:otherwise>
            		</c:choose>
            	</c:forEach>
            
            
            </div>
        </div>
    </section>
    

    <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
    <div class="scroll-top page-scroll visible-xs visible-sm">
        <a class="btn btn-primary" href="#page-top">
            <i class="fa fa-chevron-up"></i>
        </a>
    </div>

</body>
</html>