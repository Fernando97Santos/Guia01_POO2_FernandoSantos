<%-- 
    Document   : index
    Created on : 09-ago-2016, 23:40:00
    Author     : ferna
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title></title>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
        <link href="default.css" rel="stylesheet" type="text/css" media="all" />
        <link href="fonts.css" rel="stylesheet" type="text/css" media="all" />

        <!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->

    </head>
    <body>
        <div id="header-wrapper">
            <div id="header" class="container">
                <div id="menu">
                    <ul>
                        <li class="current_page_item"><a href="index.jsp" accesskey="1" title="">Homepage</a></li>
                    </ul>
                </div>
                <div id="logo">
                    <h1><a href="#">Guia 1 POO2</a></h1>
                    <span>Fernando Santos </span> </div>
            </div>
        </div>

        <div id="wrapper2">
            <div id="newsletter" class="container">
                <div class="title">
                    <h2>Reportes</h2>
                </div>
                <div class="content">
                    <h1>${mensAler}</h1>
                    <form class="" method="post" action="Script_Reportes/report1.jsp"target="_blank">
                        <div class="row half">
                            <div class="input-field col s12">
                                <center>Selecione la unidad organizativa :</center>
                                        <select class="browser-default" name="cmbUnidad" id="cmbUnidad">
                                            <jsp:useBean id="beanUnidadCtrl" class="com.sv.udb.controlador.UnidadCtrl" scope="page"/>
                                            <c:forEach items="${beanUnidadCtrl.consTodo()}" var="fila">
                                                <c:choose>
                                                    <c:when test="${fila.codiUnid eq cmbUnidad}">
                                                        <option name="codi_unid" value="${fila.codiUnid}" selected="">${fila.nombUnid}</option>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <option name="codi_unid" value="${fila.codiUnid}">${fila.nombUnid}</option>
                                                    </c:otherwise>
                                                </c:choose>
                                            </c:forEach>
                                        </select>
                                <center><input type="submit" class="button submit" id="boton"  name="cursBton" value="Generar reporte"/></center>
                                        </div>
                                        </div>  
                                                    </form>
                                            <form class="" method="post" action="Script_Reportes/report1.jsp"target="_blank">
                                                <div class="row half">
                                                    <div class="input-field col s12">
                                                        <center>Selecione la persona:</center>
                                                        <select name="cmbPersona" id="cmbPersona">
                                                            <jsp:useBean id="beanPersonaCtrl" class="com.sv.udb.controlador.PersonaCtrl" scope="page"/>
                                                            <c:forEach items="${beanPersonaCtrl.consTodo()}" var="fila">
                                                                <c:choose>
                                                                    <c:when test="${fila.codiPers eq cmbPersona}">
                                                                        <option name="codi_pers" value="${fila.codiPers}" selected="">${fila.nombPers} ${fila.apelPers} - ${fila.duiPers}</option>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <option name="codi_pers" value="${fila.codiPers}">${fila.nombPers} ${fila.apelPers} - ${fila.duiPers}</option>
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </c:forEach>
                                                        </select>
                                                        <center><input type="submit" class="button submit" id="boton"  name="cursBton" value="Generar reporte"/></center>
                                                    </div>
                                                </div>  
                                            </form>
                                            <form class="" method="post" action="Script_Reportes/report1.jsp"target="_blank">
                                                <div class="row half">
                                                    <div class="input-field col s12">
                                                        <center>Selecione la persona:</center>
                                                        <div class="input-field col s12">
                                                            <label for="date1">Fecha Inicio</label>
                                                            <input type="date"class="text" name="date1" id="date1">
                                                        </div>
                                                        <div class="input-field col s12">
                                                            <label for="date2">Fecha Fin</label>
                                                            <input type="date"class="text" name="date2" id="date2">
                                                        </div>
                                                        <center><input type="submit" class="button submit" id="boton"  name="cursBton" value="Generar reporte"/></center>
                                                    </div>
                                                </div>  
                                            </form>
                                                    </div>
                                                    </div>
                                                    </div>



                                                    <div id="copyright">
                                                        <p>&copy; Untitled. All rights reserved. | Photos by <a href="http://fotogrph.com/">Fotogrph</a> | Design by <a href="http://templated.co" rel="nofollow">TEMPLATED</a>.</p>
                                                    </div>
                                                    </body>
                                                    </html>
