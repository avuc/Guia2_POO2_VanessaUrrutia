<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page import="com.sv.udb.controlador.PersCtrl"%>
<%@page import="com.sv.udb.modelo.Pers"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html> 
<html>
	<head>
		<title>GUIA 2</title>
		
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0" />
		<link href="img/icono.png" rel='shortcut icon' type='text/css' />
		<link rel="stylesheet" href="css/animate.css" />
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="css/resource.txt">
                <link rel="stylesheet" href="css/tabla.css">
                                    <link rel="stylesheet" href="css/style.css">
                                    <link rel="stylesheet" href="css/owl.carousel.css">
		<!--[if lt IE 9]>
			<link rel="stylesheet" href="css/sky-forms-ie8.css">
		<![endif]-->
		
		<!--[if lt IE 10]>
			<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
			<script src="js/jquery.placeholder.min.js"></script>
		<![endif]-->		
		<!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
			<script src="js/sky-forms-ie8.js"></script>
		<![endif]-->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <nav>
            <ul class="primary">

                            
                              
                              <li>
                                    <a href="index.jsp">Persona</a>
                            </li>
                            <li>
                                    <a href="#">Historial</a>
                            </li>
            </ul>
        </nav>
        
        </head>
	<body >
		<div class="body">
                    
         <form name="PersForm" method="POST" action="PersServ" class = "sky-form">
                            <header>Persona</header>
                                 
                            <fieldset>
                                <h1>${mensAler}</h1>
                                <input type="hidden" name="codigo" value="${codigo}"/>
                                    <section>
                                            <label class="label">Nombre persona</label>
                                            <label class="input">
                                                    <input type="text" name="nombre" value="${nombre}"/>
                                            </label>
                                    </section>	
                                <section>
                                            <label class="label">Apellido persona</label>
                                            <label class="input">
                                                  <input type="text" name="apellido" value="${apellido}"/>
                                            </label>
                                    </section>	
                                <section>
                                            <label class="label">Foto</label>
                                            <label class="input">
                                                    <input type="text" name="telefono" value="${foto}"/>
                                            </label>
                                    </section>	
                                <section>
                                            <label class="label">Genero</label>
                                            <label class="input">
                                                    <input type="text" name="telefono" value="${genero}"/>
                                            </label>
                                    </section>	
                                <section>
                                            <label class="label">Fecha nacimiento</label>
                                            <label class="input">
                                                    <input type="text" name="telefono" value="${fecha}"/>
                                            </label>
                                    </section>	
                                <section>
                                            <label class="label">DUI</label>
                                            <label class="input">
                                                    <input type="text" name="telefono" value="${dui}"/>
                                            </label>
                                    </section>	
                                <section>
                                            <label class="label">NIT</label>
                                            <label class="input">
                                                    <input type="text" name="telefono" value="${nit}"/>
                                            </label>
                                    </section>	
                                <section>
                                            <label class="label">Tipo de sangre</label>
                                            <label class="input">
                                                    <input type="text" name="telefono" value="${tipSangre}"/>
                                            </label>
                                    </section>	
                                <section>
                                            <label class="label">Fecha alta</label>
                                            <label class="input">
                                                    <input type="text" name="telefono" value="${fechAlta}"/>
                                            </label>
                                    </section>	
                                <section>
                                            <label class="label">Fecha baja</label>
                                            <label class="input">
                                                    <input type="text" name="telefono" value="${fechBaja}"/>
                                            </label>
                                    </section>	
                                     <input type="submit"class="button"  name="cursBoton" value="Guardar"/>
                                    <input type="submit" class="button" name="cursBoton" value="Modificar"/>
                            </fieldset>                                           
                <fieldset>
                        <section>
                            
                            <div class="table-title">
<h3>Datos</h3>
</div>

        <jsp:useBean id="beanPersCtrl" class="com.sv.udb.controlador.PersCtrl" scope="page"/>						<div class="container">
                <table class="responstable">
                 <thead>
                    <tr>
                      <th data-th="Driver details">Nombre</th>
                      <th data-th="Driver details">Apellido</th>
                      <th data-th="Driver details">Foto</th>
                      <th data-th="Driver details">Genero</th>
                      <th data-th="Driver details">Fecha</th>
                      <th data-th="Driver details">DUI</th>
                      <th data-th="Driver details">NIT</th>
                      <th data-th="Driver details">Tipo sangre</th>
                      <th data-th="Driver details">Fecha alta</th>
                      <th data-th="Driver details">Fecha baja</th>
                      <th data-th="Driver details">*</th>
                    </tr>
                  </thead>

                  <tbody>

                     <c:forEach items="${beanPersCtrl.consTodo()}" var="fila">
                        <tr>
                            <td><c:out value="${fila.nombre}"></c:out></td>
                            <td><c:out value="${fila.apellido}"></c:out></td>
                            <td><c:out value="${fila.foto}"></c:out></td>
                            <td><c:out value="${fila.genero}"></c:out></td>
                            <td><c:out value="${fila.fecha}"></c:out></td>
                            <td><c:out value="${fila.dui}"></c:out></td>
                            <td><c:out value="${fila.nit}"></c:out></td>
                            <td><c:out value="${fila.tipSangre}"></c:out></td>
                            <td><c:out value="${fila.fechAlta}"></c:out></td>
                            <td><c:out value="${fila.fechBaja}"></c:out></td>
                            <td><input type="radio" name="codiPersRadi" value="${fila.codigo}"/></td>
                        </tr>
                    </c:forEach>


                  </tbody>
                </table>
                  <input type="submit" class = "button" name="cursBoton" value="Consultar"/>
                      
                    </section>
            </fieldset> 
                                   </form>
     
						
		</div>
	</body>
</html>