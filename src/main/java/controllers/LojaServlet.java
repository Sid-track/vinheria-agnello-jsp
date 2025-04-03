package controllers;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.util.*;

@WebServlet("/loja")
public class LojaServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Map<String, String>> produtos = new ArrayList<>();

        produtos.add(createProduto("1", "Vinho Tinto Reserva", "89.90", "images/vinho1.jpg"));
        produtos.add(createProduto("2", "Vinho Branco Seco", "74.50", "images/vinho2.jpg"));
        produtos.add(createProduto("3", "Vinho Rosé Premium", "99.00", "images/vinho3.jpg"));
        produtos.add(createProduto("4", "Espumante Brut", "109.90", "images/vinho4.jpg"));

        request.setAttribute("produtos", produtos);
        request.getRequestDispatcher("loja.jsp").forward(request, response);
    }

    private Map<String, String> createProduto(String id, String nome, String preco, String imagem) {
        Map<String, String> produto = new HashMap<>();
        produto.put("id", id);
        produto.put("nome", nome);
        produto.put("preco", preco);
        produto.put("imagem", imagem);
        return produto;
    }
}
