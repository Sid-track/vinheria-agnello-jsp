package controllers;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.*;

@WebServlet("/kits")
public class KitsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Map<String, String>> kits = new ArrayList<>();
        kits.add(createKit("1", "Kit Clássico Tinto", "1 Vinho Cabernet Sauvignon\n1 Vinho Malbec\n1 Mini queijo gouda\n1 Barra de chocolate amargo", "199,90", "images/kit1.jpg"));
        kits.add(createKit("2", "Kit Degustação Brancos", "2 Vinhos brancos\nMix de nuts\nTaça personalizada", "179,90", "images/kit2.jpg"));

        request.setAttribute("kits", kits);
        request.getRequestDispatcher("kits.jsp").forward(request, response);
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
