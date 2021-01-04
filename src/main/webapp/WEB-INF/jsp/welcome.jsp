<%@ page contentType="text/html; charset=ISO-8859-1" language="java" pageEncoding="UTF-8" import="java.sql.*" errorPage="" %>
<!DOCTYPE html>

<head>
    <!-- Meta tags Obrigatórias -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Olá, mundo!</title>
</head>
<body>
   <h1>Olá, mundo!</h1>
<div class="container-fluid">
  ...
</div>
<div class="alert alert-primary" role="alert">
  Um simples alerta primary com <a href="#" class="alert-link">um link de exemplo</a>. Clique nele, se quiser.
</div>
<div class="alert alert-secondary" role="alert">
  Um simples alerta secondary com <a href="#" class="alert-link">um link de exemplo</a>. Clique nele, se quiser.
</div>
<div class="alert alert-success" role="alert">
  Um simples alerta success com <a href="#" class="alert-link">um link de exemplo</a>. Clique nele, se quiser.
</div>
<div class="alert alert-danger" role="alert">
  Um simples alerta danger com <a href="#" class="alert-link">um link de exemplo</a>. Clique nele, se quiser.
</div>
<div class="alert alert-warning" role="alert">
  Um simples alerta warning com <a href="#" class="alert-link">um link de exemplo</a>. Clique nele, se quiser.
</div>
<div class="alert alert-info" role="alert">
  Um simples alerta info com <a href="#" class="alert-link">um link de exemplo</a>. Clique nele, se quiser.
</div>
<div class="alert alert-light" role="alert">
  Um simples alerta light com <a href="#" class="alert-link">um link de exemplo</a>. Clique nele, se quiser.
</div>
<div class="alert alert-dark" role="alert">
  Um simples alerta dark com <a href="#" class="alert-link">um link de exemplo</a>. Clique nele, se quiser.
</div>


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


   <!-- JavaScript (Opcional) -->
    <!-- jQuery primeiro, depois Popper.js, depois Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</body>

</html>