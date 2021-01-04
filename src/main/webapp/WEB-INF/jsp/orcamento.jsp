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



    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet"https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.5.3/css/bootstrapValidator.css"/>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>


    <title>Orcamentos Manager | Home</title>


</head>
</body>
   <!-- Bootstrap Core JavaScript -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>

<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

<script type="text/javascript">
   $(document).on('change', '#ListaPresenteSelect', function () {
      var value  = $(this).val();
      var option = $(this).find("option:selected");

      var fantasia = option.data('fantasia');
      var nome = option.data('nome');

      var id    = option.data('id');
      var email = option.data('email');

      $('#endereco').val(id);
      $('#email'   ).val(email);
      $('#id'      ).val(value);
      $('#fantasia').val(fantasia);
      $('#nome'   ).val(nome);
   });
</script>




    <div class="container text-center">
        <h3>Orcamento</h3>
        <hr>
        <form>
          <div class="form-row">
            <div class="form-group col-md-8">
                <select id="ListaPresenteSelect" class="form-control">
                    <option selected>Selecionar... </option>
                    <c:forEach var="clie" items="${clientes}">
                        <option value=${clie.codigo}  data-email=${clie.nomePessoa} data-fantasia=${clie.nomeFantasia} >${clie.nomePessoa}  </option>
                    </c:forEach>
                </select>
            </div>
            <div class="form-group col-md-4">
              <input id="email" class="form-control"  type="text" name="email" placeholder="Email" ><br>
            </div>
          </div>
          <div class="form-group col-md-12">
            <input type="text" class="form-control" id="inputAddress" placeholder="Endereço Ex. Rua Maria, nº 0">
          </div>
          <div class="form-row" >
            <div class="form-group col-md-6">
              <input type="text" class="form-control" id="inputCity" placeholder="Cidade">
            </div>
            <div class="form-group col-md-4">
              <select id="inputEstado" class="form-control" placeholder="Estado">
                <option selected>Estado ...</option>
                <option>SP</option>
                <option>RJ</option>
                <option>RS</option>
                <option>SC</option>
              </select>
            </div>

            <div class="form-group col-md-2">
                <input type="text" class="form-control" onkeypress="$(this).mask('00.000-000')" id="inputCEP" placeholder="Cep" name="inputCEP">
            </div>

            <div class="form-group col-md-12">
                <textarea class="form-control textarea" rows="10" name="Message" id="Message" placeholder="Message"></textarea>
            </div>

          </div>
        </form>


    </div>
    <div class="container">
        <div class="form-row">
            <div class="form-group col-md-4">
                <label>Valor Orçamento </label>
                <input id="valorOrcamento" type="text" class="form-control" name="valorOrcamento" onkeypress="$(this).mask('R$ #.##0,00', {reverse: true});">
            </div>
        </div>
        <div class="form-group col-md-12">
            <button type="Send a message" class="btn btn-primary" >Salva Orçamento</button>
        </div>
    </div>



    <!-- jQuery primeiro, depois Popper.js, depois Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>

</body>
</html>