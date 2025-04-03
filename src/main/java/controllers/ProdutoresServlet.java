package controllers;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.util.*;

@WebServlet("/produtores")
public class ProdutoresServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Map<String, String>> produtores = new ArrayList<>();

        produtores.add(createProdutor("1", "Vinícola Aurora", "Bento Gonçalves - RS", "images/produtor1.jpg"));
        produtores.add(createProdutor("2", "Quinta da Pacheca", "Douro - Portugal", "images/produtor2.jpg"));
        produtores.add(createProdutor("3", "Trapiche", "Mendoza - Argentina", "images/produtor3.jpg"));

        request.setAttribute("produtores", produtores);
        request.getRequestDispatcher("produtores.jsp").forward(request, response);
    }

    private Map<String, String> createProdutor(String id, String nome, String regiao, String imagem) {
        Map<String, String> produtor = new HashMap<>();
        produtor.put("id", id);
        produtor.put("nome", nome);
        produtor.put("regiao", regiao);
        produtor.put("imagem", imagem);
        return produtor;
    }
}
