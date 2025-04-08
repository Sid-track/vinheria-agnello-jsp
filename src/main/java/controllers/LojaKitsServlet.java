package controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet({"/loja", "/kits"})
public class LojaKitsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String path = request.getServletPath();

        if (path.equals("/loja")) {
            List<Map<String, String>> produtos = new ArrayList<>();
            produtos.add(createProduto("1", "McGuigan Shiraz", "89.90", "images/vinho1.jpg"));
            produtos.add(createProduto("2", "Pinot Grigio Branco", "74.50", "images/vinho2.jpg"));
            produtos.add(createProduto("3", "Porta 6 Tinto", "99.00", "images/vinho3.jpg"));
            produtos.add(createProduto("4", "Malbec Reserva", "109.90", "images/vinho4.jpg"));
            request.setAttribute("produtos", produtos);
            request.getRequestDispatcher("loja.jsp").forward(request, response);
        } else if (path.equals("/kits")) {
            List<Map<String, String>> kits = new ArrayList<>();
            kits.add(createKit("1", "Kit Clássico Tinto", "1 Vinho Cabernet Sauvignon\n1 Vinho Malbec\n1 Mini queijo gouda\n1 Barra de chocolate amargo", "199,90", "images/kit1.jpg"));
            kits.add(createKit("2", "Kit Degustação Brancos", "2 Vinhos brancos\nMix de nuts\nTaça personalizada", "179,90", "images/kit2.jpg"));
            request.setAttribute("kits", kits);
            request.getRequestDispatcher("kits.jsp").forward(request, response);
        }
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
