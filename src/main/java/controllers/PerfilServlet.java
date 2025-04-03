package controllers;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.*;

@WebServlet("/perfil")
public class PerfilServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Map<String, String> usuario = new HashMap<>();
        usuario.put("nome", "Maria Clara");
        usuario.put("email", "clara@vinheria.com");
        usuario.put("plano", "Premium");
        usuario.put("foto", "images/perfil.jpg");

        request.setAttribute("usuario", usuario);
        request.getRequestDispatcher("perfil.jsp").forward(request, response);
    }
}