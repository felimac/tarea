<%@page import="com.emergentes.Sesion"%>
<%@page import="java.util.ArrayList"%>
<%
    if(session.getAttribute("almacen") == null){
        ArrayList<Sesion> lisaux = new ArrayList<Sesion>();
        session.setAttribute("almacen",lisaux);
    }
    ArrayList<Sesion> almacen = (ArrayList<Sesion>)session.getAttribute("almacen");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 align="center">TAREAS PENDIENTES</h1>
        <table border="0">
            <thead>
                <tr>
                    <th width="175"></th>
                    <th width="500"><a href="formulario.jsp">Nuevo</a></th>
                </tr>
            </thead>
        </table>
        <br>
        <table align="center" border="1" cellspacing="0">
            <thead>
                <tr>
                    <th width="10">Id</th>
                    <th width="380">Tarea</th>
                    <th width="100">Completado</th>
                    <th width="10"></th>
                </tr>
            </thead>
            <tbody>
                <%
                  if(almacen != null){
                      for (Sesion s: almacen){                   
                %>
                <tr>
                    <td width="10"><%= s.getId() %></td>
                    <td wiidth="380"><%= s.getTarea() %></td>
                    <td width="100"><input type="checkbox" name="" value="ON" /></td>
                    <td width="10"><a href="TareaServlet?op=eliminar&id=<%= s.getId()%>">Eliminar</a></td>
                </tr>
                <%
                        }
                    }
                %>
            </tbody>
        </table>

    </body>
</html>

