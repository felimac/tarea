<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="TareaServlet" method="post">
            <table>
                <tr>
                    <td>Id</td>
                    <td><input type="text" name="id" value="0" size="2"></td>
               </tr>
               <tr>
                    <td>Tarea</td>
                    <td><input type="text" name="tarea" value=""></td>
               </tr>
               <tr>
                   <td></td>
                    <td><input type="submit"  value="Enviar"></td>
               </tr>
            </table>
        </form>
    </body>
</html>

