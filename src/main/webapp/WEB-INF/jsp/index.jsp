<%@ page contentType="text/html; charset=ISO-8859-1" language="java" pageEncoding="UTF-8" import="java.sql.*" errorPage="" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>

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

<body>
    <!-- Bootstrap Core JavaScript -->
    <script src="bootstrap/js/bootstrap.min.js"></script>

 	<div class="navbar-header">
 		<button type="button" class="navbar-toggle glyphicon glyphicon-menu-hamburger"
 		data-toggle="collapse" data-target="#bona-navbar">
               </button>
 		<a class="navbar-brand" href="index.jsp"> </a>
 	</div>
	<div role="navigation">
		<div class="navbar navbar-inverse">
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="ControleUsuario">Cadastrar Usuário</a></li>
					<li><a href="ControleProduto">Materiais/Serviços</a></li>
					<li><a href="Financa">Gerencia Finanças</a></li>
					<li><a href="new-task">Novo Orçamento</a></li>
					<li><a href="all-tasks">Todos Orçamentos</a></li>
				</ul>
			</div>
		</div>
	</div>

	<c:choose>
		<c:when test="${mode == 'MODE_LOGIN'}">
			<div class="container" id="homeDiv">
			<a class="navbar-brand" href="index.jsp"> </a>
			</div>
		</c:when>
		<c:when test="${mode == 'MODE_HOME'}">
			<div class="container" id="homeDiv">
				<div class="jumbotron text-center">
					<h1>RAFI-ELET Orçamentos</h1>
				</div>
			</div>
		</c:when>
		<c:when test="${mode == 'MODE_TASKS'}">

<%--			<div class="container text-center">--%>
<%--				<h3>Manage Task</h3>--%>
<%--				<hr>--%>
<%--				<form class="form-horizontal" method="POST" action="save-task">--%>
<%--					<input type="hidden" name="id" value="${task.id}"/> --%>
<%--					<div class="form-group">--%>
<%--						<label class="control-label col-md-3">Nome</label>--%>
<%--						<div class="col-md-7">--%>
<%--							<input type="text" class="form-control" name="namecliente" value="${task.nomecliente}"/>--%>
<%--						</div>				--%>
<%--					</div>--%>
<%--					<div class="form-group">--%>
<%--						<label class="control-label col-md-3">Description</label>--%>
<%--						<div class="col-md-7">--%>
<%--							<input type="text" class="form-control" name="description" value="${task.description}"/>--%>
<%--						</div>				--%>
<%--					</div>--%>

<%--					<div class="form-group">--%>
<%--						<input type="submit" class="btn btn-primary" value="Save"/>--%>
<%--					</div>--%>

<%--				</form>--%>
<%--			</div>--%>


			<div class="container text-center" id="tasksDiv">
				<h3>Meus Orçamentos</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered text-left">
						<thead>
							<tr>
								<th>Orc</th>
								<th>Data</th>
								<th>Cliente</th>
								<th>Descricao</th>
								<th>Valor</th>
								<th>Status</th>
								<th></th>
								<th></th>
							</tr>
						</thead>
						<tbody>
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
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</c:when>
		<c:when test="${mode == 'MODE_NEW' || mode == 'MODE_UPDATE'}">
			<div class="container text-center">
				<h3>Manage Task</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-task">
					<input type="hidden" name="id" value="${task.id}"/>
					<input type="hidden" name="numOrcamento" value="${task.numorcamento}"/>
					<div class="form-group">
						<label class="control-label col-md-3">Codigo Cliente</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="codcliente" value="${task.codcliente}"/>
						</div>
						<label class="control-label col-md-3">Nome</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="nomecliente" value="${task.nomecliente}"/>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Description</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="description" value="${task.description}"/>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Valor Total</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="valororcamento" value="${task.valororcamento}"/>
						</div>
					</div>
				    <div class="form-row"></div>

					<div class="form-group">
						<input type="submit" class="btn btn-primary" value="Save"/>
					</div>

				</form>
			</div>
		</c:when>
		<c:when test="${mode == 'MODE_USUARIO'}">
		    <div class="container">
		        <div class="row">
		            <div class="col-md-4 col-md-offset-4">
		                <div class="login-panel panel panel-default">
		                    <div class="panel-heading">
		                        <h3 class="panel-title">Faça o login</h3>
		                    </div>
		                    <div class="panel-body">
		                        <form role="form" method="POST" action="ControleUsuario">
		                            <fieldset>
		                                <div class="form-group">
		                                    <input class="form-control" placeholder="Nome" name="nome" type="nome" autofocus>
		                                </div>
		                                <div class="form-group">
		                                    <input class="form-control" placeholder="E-mail" name="email" type="email" autofocus>
		                                </div>
		                                <div class="form-group">
		                                    <input class="form-control" placeholder="Senha" name="senha" type="password">
		                                </div>
		                                <!-- Change this to a button or input when using this as a form -->
		                                <input type="hidden" name="acao" value="Cadastrar"/>
		                                <input type="submit" class="btn btn-lg btn-success btn-block" value="Cadastrar"/>
		                            </fieldset>
		                        </form>
		                    </div>
		                </div>
		            </div>
		        </div>
		    </div>

		    <!-- jQuery -->
		    <script src="bootstrap/js/jquery.min.js"></script>

		    <!-- Bootstrap Core JavaScript -->
		    <script src="bootstrap/js/bootstrap.min.js"></script>

		    <!-- Metis Menu Plugin JavaScript -->
		    <script src="bootstrap/css/metisMenu/metisMenu.min.js"></script>

		    <!-- Custom Theme JavaScript -->
		    <script src="bootstrap/js/sb-admin-2.js"></script>
		</c:when>
		<c:when test="${mode == 'MODE_PRODUTO'}">

		    <nav class="navbar navbar-inverse">
		        <div class="container-fluid">
		            <div class="navbar-header">
		                <a class="navbar-brand" href="#">Cadastro de Produtos</a>
		            </div>
		            <!--
		            <ul class="nav navbar-nav">
		                <li class="active"><a href="#">Home</a>
		                <li><a href="#">Page 1</a>
		                <li><a href="#">Page 2</a>
		            </ul>
		            -->
		            <ul class="nav navbar-nav navbar-right">
		                <li><a href="#"><span class="glyphicon glyphicon-log-out"></span>Sair</a></li>
		            </ul>
		        </div>
		    </nav>

		    <!-- ESQUERDA -->
		    <div class="container-fluid">
		        <div class="row content">
		            <div class="col-sm-3">
		                <div class="panel-body">
		                    <form role="form" method="POST" action="ControleProduto">
		                        <fieldset>
		                            <h3> Cadastro de Produto </h3>
		                            <div class="form-group">
		                                <input class="form-control" placeholder="Nome do produto" name="nome" type="text" autofocus>
		                            </div>
		                            <div class="form-group">
		                                <input class="form-control" placeholder="Quantidade" name="qtd" type="number" autofocus>
		                            </div>
		                            <div class="form-group">
		                                <input type="text" class="form-control" placeholder="Preço" name="preco" autofocus>
		                            </div>
		                            <!-- Change this to a button or input when using this as a form -->
		                            <input type="submit" class="btn btn-lg btn-success btn-block" value="Cadastrar"/>
		                            <br>
		                            <input type="hidden" name="acao" value="Cadastrar"/>
		                        </fieldset>
		                    </form>
		                </div>
		            </div>

		            <!-- DIREITA -->
		            <div class="col-sm-4 well">
		                <h3><center>Todos os produtos</center></h3>
		                <tr>
		                    <td>Código: </td><br>
		                    <td>Nome: </td><br>
		                    <td>Quantidade: </td><br>
		                    <td>Preço:</td><br>
		                    <td>------------------------------------------</td><br>
		                </tr>
		            </div>
		        </div>
		    </div>



		    <footer class="container-fluid well">
		        <p>Posted by: Acogero Vinicius</p>
		        <p>Contact information: <a href="mailto:louis.seipher@gmail.com">louis.seipher@gmail.com</a>.</p>
		    </footer>

		</c:when>
	</c:choose>

	<script src="static/js/jquery-1.11.1.min.js"></script>
    <script src="static/js/bootstrap.min.js"></script>
</body>
</html>