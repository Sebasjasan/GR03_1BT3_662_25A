<%@ page import="java.util.List" %>
<%@ page import="com.barrial.Entity.Seguridad" %>
<%@ page import="com.barrial.DTO.SeguridadDTO" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    response.setContentType("text/html;charset=UTF-8");
    response.setCharacterEncoding("UTF-8");
    request.setCharacterEncoding("UTF-8");
%>

<c:set var="seguridadContent">
    <div class="encabezadoEmprendimiento">
        <h2>SEGURIDAD</h2>
        <button type="submit" class="botonRegistroSeguridad">Agregar seguridad</button>
    </div>

    <div class="seguridades">
        <%
            List<SeguridadDTO> seguridadeDTO = (List<SeguridadDTO>) request.getAttribute("seguridades");
            if (seguridadeDTO != null && !seguridadeDTO.isEmpty()){
                for (SeguridadDTO seguridad: seguridadeDTO) {
        %>
        <div class="seguridad">
            <div class="imagenSeguridad">
                <img width="100%" src="<%=seguridad.getImagen()%>" alt="Imagen de seguridad">
            </div>
            <div class="contenidoSeguridad">
                <div class="tituloSeguridad">
                    <h3><%=seguridad.getNombre()%></h3>
                </div>
                <div class="contenidoSeguridad">
                    <p><%=seguridad.getDescripcion()%></p>
                </div>
                <div>
                    <form action="mostrarSeguridad" method="POST">
                        <input type="hidden" name="id" value="<%=seguridad.getId()%>">
                        <button name="accion" value="votar" class="botonVotarSeguridad">VOTAR</button>
                    </form>
                </div>
                <div>
                    <form action="mostrarSeguridad" method="POST">
                        <input type="hidden" name="id" value="<%=seguridad.getId()%>">
                        <button name="accion" value="editar" class="botonVotarSeguridad"> EDITAR</button>
                        <input type="hidden" name="id" value="<%=seguridad.getId()%>">
                        <button name="accion" value="eliminar" class="botonVotarSeguridad">ELIMINAR</button>
                    </form>
                </div>
            </div>
            <div class="votosSeguridad">
                <div>
                    <h3>Número de votaciones:</h3>
                </div>
                <div>
                    <h1><%=seguridad.getNumVotos()%></h1>
                </div>
            </div>
        </div>
        <%
            }
        } else {
        %>
        <div class="noHaySeguridad">
            <h2>NO HAY SEGURIDADES</h2>
        </div>
        <%
            }
        %>
    </div>

    <div class="registroSeguridad" id="registroSeguridad">
        <div class="tipoSeguridad">
            <div class="tituloRegistro">
                <h3>Registrar seguridad</h3>
            </div>
        </div>
        <div class="datosRegistro">
            <form action="mostrarSeguridad" method="POST">
                Nombre: <br>
                <input type="text" name="nombre"><br>
                Descripción: <br>
                <input type="text" name="descripcion"><br>
                Imagen:<br>
                <input type="text" name="imagen"><br>
                <button type="submit" name="accion" value="crear">Registrar seguridad</button>
            </form>
        </div>
    </div>
</c:set>

<jsp:include page="/jsp/baseM.jsp">
    <jsp:param name="title" value="MiBarrioApp-Seguridad"/>
    <jsp:param name="contentPage" value="${seguridadContent}"/>
    <jsp:param name="extra_js" value="${pageContext.request.contextPath}/js/seguridadJs.js"/>
    <jsp:param name="extra_css" value="${pageContext.request.contextPath}/css/styleSeguridad.css"/>
</jsp:include>
