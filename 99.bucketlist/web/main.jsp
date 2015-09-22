<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<style>
	#section{
		background: #03d3e4;
	}
</style>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Bucketlist</title>

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

</head>

<body>
    
    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="main.bk">Bucket List</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li class="page-scroll">
                    	<c:choose>
                    		<c:when test="${loginuser == null }">
                    			<a href="go.bk?next=login">login</a>
                    		</c:when>
                    		<c:otherwise>
                    			<a href="logout.bk">logout</a>
                    		</c:otherwise>
                    	</c:choose>
                    </li>
                    <li class="page-scroll">
                    	<c:choose>
                    		<c:when test="${loginuser == null }">
                    			<a href="go.bk?next=join">join</a>
                    		</c:when>
                    		<c:otherwise>
                    			<a href="mypage.bk">mypage</a>
                    		</c:otherwise>
                    	</c:choose>
                    </li>
                    <li class="page-scroll">
                 	   <c:choose>
                    		<c:when test="${loginuser == null }">
                    			<a href="go.bk?next=login">contents</a>
                    		</c:when>
                    		<c:otherwise>
                    			<a href="go.bk?next=contents">contents</a>
                    		</c:otherwise>
                    	</c:choose>
                    </li>
                    <li class="page-scroll">
                        <a href="contentslist.bk">contents list</a>
                    </li>
                    <li class="page-scroll">
                        <a href="go.bk?next=comments">comments</a>
                    </li>
                    <li class="page-scroll">
                        <a href="commentslist.bk">comments list</a>
                    </li>
                    
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
  <!-- Header -->
    <header>
    </header>
    
   <section id="section">
      <c:choose>
         <c:when test="${center == null }">
            <jsp:include page="mcenter.jsp"></jsp:include>
         </c:when>
         <c:otherwise>
            <jsp:include page="${center }.jsp"></jsp:include>
         </c:otherwise>
      </c:choose>
   </section>
    
    <!-- Footer -->
    <footer class="text-center">
        <div class="footer-above">
            <div class="container">
                <div class="row">
                    <div class="footer-col col-md-4">
                        <ul class="list-inline">
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-facebook"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-google-plus"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-twitter"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
    <div class="scroll-top page-scroll visible-xs visible-sm">
        <a class="btn btn-primary" href="#page-top">
            <i class="fa fa-chevron-up"></i>
        </a>
    </div>

    <!-- jQuery -->
    <script src="bootstrap/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="bootstrap/js/classie.js"></script>
    <script src="bootstrap/js/cbpAnimatedHeader.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="bootstrap/js/freelancer.js"></script>

</body>

</html>