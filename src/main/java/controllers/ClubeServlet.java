package controllers;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.*;

@WebServlet("/clube")
public class ClubeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Map<String, String>> planos = new ArrayList<>();

        planos.add(createPlano("Essencial", "2 garrafas / mês", "129,90"));
        planos.add(createPlano("Premium", "4 garrafas / mês", "229,90"));
        planos.add(createPlano("Master", "6 garrafas / mês", "319,90"));

        request.setAttribute("planos", planos);
        request.getRequestDispatcher("clube.jsp").forward(request, response);
    }

    private Map<String, String> createPlano(String nome, String descricao, String preco) {
        Map<String, String> plano = new HashMap<>();
        plano.put("nome", nome);
        plano.put("descricao", descricao);
        plano.put("preco", preco);
        return plano;
    }
}
