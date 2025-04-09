package controllers;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.*;

@WebServlet("/home")
public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Produtos em destaque
        List<Map<String, String>> produtos = new ArrayList<>();
        produtos.add(createProduto("1", "Vinho da Casa", "69.90", "images/vinho.png"));
        produtos.add(createProduto("2", "Seleção Especial", "129.90", "images/vinho.png"));
        produtos.add(createProduto("3", "Vinho Rosé", "89.50", "images/vinho.png"));
        request.setAttribute("produtos", produtos);

        // Kits para destaque rápido
        List<Map<String, String>> kits = new ArrayList<>();
        kits.add(createKit("1", "Kit Clássico Tinto", "1 Vinho Cabernet Sauvignon\n1 Vinho Malbec\n1 Mini queijo gouda\n1 Barra de chocolate amargo", "199,90", "images/kit1.png"));
        kits.add(createKit("2", "Kit Degustação Brancos", "2 Vinhos brancos\nMix de nuts\nTaça personalizada", "179,90", "images/kit2.png"));
        request.setAttribute("kits", kits);

        request.getRequestDispatcher("home.jsp").forward(request, response);
    }

    private Map<String, String> createProduto(String id, String nome, String preco, String imagem) {
        Map<String, String> produto = new HashMap<>();
        produto.put("id", id);
        produto.put("nome", nome);
        produto.put("preco", preco);
        produto.put("imagem", imagem);
        return produto;
    }

    private Map<String, String> createKit(String id, String nome, String descricao, String preco, String imagem) {
        Map<String, String> kit = new HashMap<>();
        kit.put("id", id);
        kit.put("nome", nome);
        kit.put("descricao", descricao);
        kit.put("preco", preco);
        kit.put("imagem", imagem);
        return kit;
    }
}
