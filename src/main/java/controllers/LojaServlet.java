package controllers;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.*;

@WebServlet("/loja")
public class LojaServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Map<String, String>> produtos = new ArrayList<>();
        produtos.add(createProduto("1", "McGuigan Shiraz", "89.90", "images/vinho.png"));
        produtos.add(createProduto("2", "Pinot Grigio Branco", "74.50", "images/vinho.png"));
        produtos.add(createProduto("3", "Porta 6 Tinto", "99.00", "images/vinho.png"));
        produtos.add(createProduto("4", "Malbec Reserva", "109.90", "images/vinho.png"));

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
