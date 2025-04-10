package controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.HashMap;
import java.util.stream.Collectors;

@WebServlet("/produto")
public class ProdutoServlet extends HttpServlet {

    private static final List<Map<String, String>> produtos = Arrays.asList(
            createProduto("1", "McGuigan Shiraz", "89.90", "images/vinho.png"),
            createProduto("2", "Pinot Grigio Branco", "74.50", "images/vinho.png"),
            createProduto("3", "Porta 6 Tinto", "99.00", "images/vinho.png"),
            createProduto("4", "Malbec Reserva", "109.90", "images/vinho.png")
    );

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String id = request.getParameter("id");
        Map<String, String> produtoSelecionado = null;

        for (Map<String, String> p : produtos) {
            if (p.get("id").equals(id)) {
                produtoSelecionado = p;
                break;
            }
        }

        List<Map<String, String>> relacionados = produtos.stream()
                .filter(p -> !p.get("id").equals(id))
                .limit(4)
                .collect(Collectors.toList());

        request.setAttribute("produto", produtoSelecionado);
        request.setAttribute("relacionados", relacionados);
        request.getRequestDispatcher("produto.jsp").forward(request, response);
    }

    private static Map<String, String> createProduto(String id, String nome, String preco, String imagem) {
        Map<String, String> produto = new HashMap<>();
        produto.put("id", id);
        produto.put("nome", nome);
        produto.put("preco", preco);
        produto.put("imagem", imagem);
        return produto;
    }
}
