
<%@page import="java.util.ArrayList"%>
<%@page import="clase.Productos"%>
<%
    if(session.getAttribute("lista")==null){
    ArrayList<String> lis=new ArrayList<String>();
    session.setAttribute ("lista",lis);
    }
    ArrayList<Productos> lista = (ArrayList<Productos>)session.getAttribute("ListaProducto");   
%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor ="Aquamarine">
              
               <center>*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
                <br>
                                                                                           
                <br>
                                          SEGUNDO PARCIAL TEM-742                           
                <br>
                                                                                           
                <br>
                                 NOMBRE:       ALBA JHOSELIN POMA CUNO                         
                <br>
                                 CARNET:       13213051 L.P.                                         
                <br>
                                                                                          
                <br>
                *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
                 <center><h1>----PRODUCTOS-----</h1></center>
                <br>
                </center>
    <center>    <a href="MainController?op=nuevo">Nuevo Producto</a></center>
    
    <center><table border="5">
            <tr>
                <th>ID</th>
                <th>DESCRIPCION</th>
                <th>CANTIDAD</th>
                <th>PRECIO</th>
                <th>CATEGORIA</th>
                <th>EDITAR</th>
                <th>ELIMINAR</th>
            </tr>
            <%
                if (lista != null) {
                        for (Productos item : lista) {
                    
            %>
            <tr>
                <td><%= item.getId() %></td>
                <td><%= item.getDescripcion() %></td>
                <td><%= item.getCantidad() %></td>
                <td><%= item.getPrecio() %></td>
                <td><%= item.getCategoria() %></td>
                <td><a href="MainController?op=editar&id=<%= item.getId() %>">Editar</a></td>
                <td><a href="MainController?op=eliminar&id=<%= item.getId() %>"
                       onclick='return confirm("Esta Seguro de Eliminar el producto");' >Eliminar</a></td>
            </tr>
            <%
                    }
                }
            %>
        </table>
</center>

    </body>
</html>
