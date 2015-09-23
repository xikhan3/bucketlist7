<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<script>
   
</script>
<head>
<meta charset="utf-8" />
<title>mypage</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link rel="stylesheet" type="text/css"
   href="bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
   href="font-awesome/css/font-awesome.min.css" />

<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<style>
   #center{
      margin: 0 auto;
   }
</style>

</head>
<body>



   <div class="container">

      <div class="row">

         <div class="col-md-3">
            <p class="lead"></p>
            <div class="list-group">
               <a href="#" class="list-group-item active">Menu</a> <a href="#"
                  class="list-group-item">Contents</a> <a href="#"
                  class="list-group-item">Following</a> <a href="#"
                  class="list-group-item">Q&A</a>
            </div>
         </div>

         <div class="col-md-9">

            <div class="thumbnail">
               <img class="img-responsive" src="img/users/${user.user_image }"
                  width="400" height="400">
                  
               <div class="panel panel-default">
                  <div class="panel-heading">
                     <h4>Processing Status</h4>
                  </div>
                  <div class="panel-body">

                     <small>Complete</small>
                     <div class="progress">
                        <div class="progress-bar progress-bar-success"
                           role="progressbar" aria-valuenow="72" aria-valuemin="0"
                           aria-valuemax="100" style="width: 72%">
                           <span class="sr-only">72% Complete</span>
                        </div>
                     </div>
                     <small>In Progress</small>
                     <div class="progress">
                        <div class="progress-bar progress-bar-info" role="progressbar"
                           aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
                           style="width: 20%">
                           <span class="sr-only">20% Complete</span>
                        </div>
                     </div>
                     <small>At Risk</small>
                     <div class="progress">
                        <div class="progress-bar progress-bar-danger" role="progressbar"
                           aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"
                           style="width: 80%">
                           <span class="sr-only">80% Complete</span>
                        </div>
                     </div>

                  </div>
                  <!--/panel-body-->
               </div>
               <!--/panel-->

               <div class="caption-full">
                  <h4>
                     <a href="#">여기까지</a>
                  </h4>

                  <h4>
                     <a href="#">들어가나</a>
                  </h4>
                  <h4>
                     <a href="#">${user.user_id }</a>
                  </h4>
                  <h4>
                     <a href="#">${user.user_password }</a>
                  </h4>
                  <h4>
                     <a href="#">${user.user_name }</a>
                  </h4>
                  <h4>
                     <a href="#">${user.user_email }</a>
                  </h4>
                  <!-- <p>See more snippets like these online store reviews at <a target="_blank" href="http://bootsnipp.com">Bootsnipp - http://bootsnipp.com</a>.</p>
                        <p>Want to make these reviews work? Check out
                            <strong><a href="http://maxoffsky.com/code-blog/laravel-shop-tutorial-1-building-a-review-system/">this building a review system tutorial</a>
                            </strong>over at maxoffsky.com!</p>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p> -->

               </div >
               <table id="center" border="1"><tr><td>nav
               <div>
               <br>asdasdasdasd
               <br>
               <br>sdsdsd
               <br>sdsdsdsd
               </div>
               
               </td>
               
               <td width="60"></td>
               
               <td>
               <div>
               <br>a123124125sasd
               <br>
               <br>sdsdsdsdsd
               <br>sdsdsdsd
               </div>
               </td></tr></table>
               <div class="ratings">
                  <p class="pull-right">3 reviews</p>
                  <p>
                     <span class="glyphicon glyphicon-star"></span> <span
                        class="glyphicon glyphicon-star"></span> <span
                        class="glyphicon glyphicon-star"></span> <span
                        class="glyphicon glyphicon-star"></span> <span
                        class="glyphicon glyphicon-star-empty"></span> 4.0 stars
                  </p>
               </div>
            </div>

            <div class="well">

               <div class="text-right">
                  <a class="btn btn-success">Leave a Review</a>
               </div>

               <hr>

               <div class="row">
                  <div class="col-md-12">
                     <span class="glyphicon glyphicon-star"></span> <span
                        class="glyphicon glyphicon-star"></span> <span
                        class="glyphicon glyphicon-star"></span> <span
                        class="glyphicon glyphicon-star"></span> <span
                        class="glyphicon glyphicon-star-empty"></span> Anonymous <span
                        class="pull-right">10 days ago</span>
                     <p>This product was great in terms of quality. I would
                        definitely buy another!</p>
                  </div>
               </div>

               <hr>

               <div class="row">
                  <div class="col-md-12">
                     <span class="glyphicon glyphicon-star"></span> <span
                        class="glyphicon glyphicon-star"></span> <span
                        class="glyphicon glyphicon-star"></span> <span
                        class="glyphicon glyphicon-star"></span> <span
                        class="glyphicon glyphicon-star-empty"></span> Anonymous <span
                        class="pull-right">12 days ago</span>
                     <p>I've alredy ordered another one!</p>
                  </div>
               </div>

               <hr>

               <div class="row">
                  <div class="col-md-5">
                     <span class="glyphicon glyphicon-star"></span> <span
                        class="glyphicon glyphicon-star"></span> <span
                        class="glyphicon glyphicon-star"></span> <span
                        class="glyphicon glyphicon-star"></span> <span
                        class="glyphicon glyphicon-star-empty"></span> <span
                        class="pull-right">15 days ago</span>
                     <p>I've seen some better than this, but not at this price. I
                        definitely recommend this item.</p>
                  </div>
               </div>

            </div>

         </div>

      </div>

   </div>



</body>
</html>