package web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author edisonjao
 */
@WebServlet("/ValidacionDatos")
public class datos extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = resp.getWriter()) {

            String nombre = req.getParameter("nombre");
            String apellido = req.getParameter("apellidos");
            String email = req.getParameter("email");
            String telefono = req.getParameter("telefono");
            String fecha = req.getParameter("fecha");
            String lugar = req.getParameter("lugar");
            String evento = req.getParameter("eventos");
            String comentarios = req.getParameter("comentarios");

            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet datos</title>");
            out.println("<link rel='stylesheet' type='text/css' href='css/styles.css'>");
            out.println("<link href='https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css\' rel='stylesheet' integrity='sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We' crossorigin='anonymous'>");
            out.println("</head>");
            out.println("<body class='text-center  fondo'>");
            out.println("<main class='form-signin'>");
            out.println("<h1 class='pt-2 text-white'>Datos de la Reserva</h1>");
            out.println("<table class='row justify-content-center table bg-secondary text-white main1' id='main2' >");

            out.println("<tr class='form-floating'>");
            out.println("<td>Nombre/s</td>");
            out.println("<td>" + nombre + "</td>");
            out.println("</tr>");

            out.println("<tr class='form-floating'>");
            out.println("<td>Apellidos</td>");
            out.println("<td>" + apellido + "</td>");
            out.println("</tr>");

            out.println("<tr class='form-floating'>");
            out.println("<td>E-mail</td>");
            out.println("<td>" + email + "</td>");
            out.println("</tr>");

            out.println("<tr class='form-floating'>");
            out.println("<td>Telefono</td>");
            out.println("<td>" + telefono + "</td>");
            out.println("</tr>");

            out.println("<tr class='form-floating'>");
            out.println("<td>Fecha</td>");
            out.println("<td>" + fecha + "</td>");
            out.println("</tr>");

            out.println("<tr class='form-floating'>");
            out.println("<td>Lugar de el Evento</td>");
            out.println("<td>" + lugar + "</td>");
            out.println("</tr>");
            
            out.println("<tr class='form-floating'>");
            out.println("<td>Tipo de Evento</td>");
            out.println("<td>" + evento + "</td>");
            out.println("</tr>");

            out.println("<tr class='form-floating'>");
            out.println("<td>Comentarios</td>");
            out.println("<td>" + comentarios + "</td>");
            out.println("</tr>");

            out.println("<tr>");
            out.println("<td colspan='2'>");
            out.println("<a href='/EventosProject/index.jsp' class='btn btn-outline-success' type='submit' >Back Home</a>");
            out.println("</td>");
            out.println("</tr>");

            out.println("</table>");
            out.println("</main>");

            out.println("<script src='js/script.js'></script>");
            out.println("</body>");
            out.println("</html>");

        }

    }

}
