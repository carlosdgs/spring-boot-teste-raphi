<%@ page contentType="text/html; charset=ISO-8859-1" language="java" pageEncoding="UTF-8" import="java.sql.*" errorPage="" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>


<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GMT">

    <title>Orcamentos Manager | Home</title>

    <!-- Bootstrap CSS -->
    <link href="static/css/bootstrap.min.css" rel="stylesheet">
     <link href="static/css/style.css" rel="stylesheet">

    <!--[if lt IE 9]>
		<script src="static/js/html5shiv.min.js"></script>
		<script src="static/js/respond.min.js"></script>
	<![endif]-->


</head>


<jsp:include page="../jsp/fragments/header.jsp" />

</body>
   <!-- Bootstrap Core JavaScript -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
			<div class="container text-center" id="tasksDiv">
                    <div class="row row-flex">
                        <c:forEach var="task" items="${tasks}">
                            <tr>
                                <td>${task.numorcamento}</td>
                                <td>${task.date_created}</td>
                                <td>${task.nomecliente}</td>
                                <td>${task.description}</td>
                                <td>${task.valororcamento}</td>
                                <td>${task.finished}</td>
                                <td><a href="update-task?id=${task.id}"><span class="glyphicon glyphicon-pencil"></span></a></td>
                                <td><a href="delete-task?id=${task.id}"><span class="glyphicon glyphicon-trash"></span></a></td>
                                <td><a href="orcamento?id=${task.id}"><span class="glyphicon glyphicon-plus-sign"></span></a></td>
                            </tr>
                            <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                                <div class="price-table pt-bg-black">
                                    <div>
                                        <span>${task.numorcamento}</span>
                                        <span>${task.valororcamento}</span>
                                        <span>${task.nomecliente}</span>
                                    </div>
                                    <ul>
                                        <li>Status</li>
                                        <li>${task.date_created}</li>
                                        <li>First Month Hosting</li>
                                        <li>On Page SEO</li>
                                        <li>24/6 Support</li>
                                    </ul>
                                    <a href="#">purchase</a>
                                </div>
                            </div>
                        </c:forEach>
                    </div>

				</div>
			</div>
    <!-- jQuery primeiro, depois Popper.js, depois Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>



<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<div class="container">
    <div class="row row-flex">
        <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
            <div class="price-table pt-bg-black">
                <div>
                    <span>basic</span>
                    <span>Price $99.99/mo</span>
                    <span>Features included!</span>
                </div>
                <ul>
                    <li>Domain name</li>
                    <li>Social Media Integration</li>
                    <li>First Month Hosting</li>
                    <li>On Page SEO</li>
                    <li>24/6 Support</li>
                </ul>
                <a href="#">purchase</a>
            </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
            <div class="price-table pt-bg-green">
                <div>
                    <span>basic</span>
                    <span>Price $99.99/mo</span>
                    <span>Features included!</span>
                </div>
                <ul>
                    <li>Domain name</li>
                    <li>Social Media Integration</li>
                    <li>First Month Hosting</li>
                    <li>On Page SEO</li>
                    <li>24/6 Support</li>
                </ul>
                <a href="#">purchase</a>
            </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
            <div class="price-table pt-bg-red">
                <div>
                    <span>basic</span>
                    <span>Price $99.99/mo</span>
                    <span>Features included!</span>
                </div>
                <ul>
                    <li>Domain name</li>
                    <li>Social Media Integration</li>
                    <li>First Month Hosting</li>
                    <li>On Page SEO</li>
                    <li>24/6 Support</li>
                </ul>
                <a href="#">purchase</a>
            </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
            <div class="price-table pt-bg-blue">
                <div>
                    <span>basic</span>
                    <span>Price $99.99/mo</span>
                    <span>Features included!</span>
                </div>
                <ul>
                    <li>Domain name</li>
                    <li>Social Media Integration</li>
                    <li>First Month Hosting</li>
                    <li>On Page SEO</li>
                    <li>24/6 Support</li>
                </ul>
                <a href="#">purchase</a>
            </div>
        </div>
    </div>
</div>




</body>

</html>