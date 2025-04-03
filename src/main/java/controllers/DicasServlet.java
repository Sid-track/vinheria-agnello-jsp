package controllers;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.*;

@WebServlet("/dicas")
public class DicasServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Map<String, String>> dicas = new ArrayList<>();

        dicas.add(createDica("Como armazenar vinho", "Mantenha as garrafas deitadas, em local escuro e com temperatura entre 12°C e 18°C."));
        dicas.add(createDica("Taça ideal para cada tipo", "Use taças maiores para vinhos tintos e menores para brancos, para realçar os aromas."));
        dicas.add(createDica("Ordem de degustação", "Deguste primeiro os espumantes, depois os brancos, rosés e por último os tintos."));
        dicas.add(createDica("Harmonização básica", "Vinhos leves combinam com pratos leves, vinhos encorpados com pratos mais intensos."));

        request.setAttribute("dicas", dicas);
        request.getRequestDispatcher("dicas.jsp").forward(request, response);
    }

    private Map<String, String> createDica(String titulo, String texto) {
        Map<String, String> dica = new HashMap<>();
        dica.put("titulo", titulo);
        dica.put("texto", texto);
        return dica;
    }
}
