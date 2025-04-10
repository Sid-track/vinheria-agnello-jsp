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
        List<Map<String, Object>> kits = new ArrayList<>();

        kits.add(createKit("1", "Kit Clássico Tinto",
                Arrays.asList("1 Vinho Cabernet Sauvignon", "1 Vinho Malbec", "1 Mini queijo gouda", "1 Barra de chocolate amargo"),
                "199,90", "images/kit1.png"));

        kits.add(createKit("2", "Kit Degustação Brancos",
                Arrays.asList("2 Vinhos brancos", "Mix de nuts", "Taça personalizada"),
                "179,90", "images/kit2.png"));

        request.setAttribute("kits", kits);
        request.getRequestDispatcher("kits.jsp").forward(request, response);
    }

    private Map<String, Object> createKit(String id, String nome, List<String> descricao, String preco, String imagem) {
        Map<String, Object> kit = new HashMap<>();
        kit.put("id", id);
        kit.put("nome", nome);
        kit.put("descricao", descricao);
        kit.put("preco", preco);
        kit.put("imagem", imagem);
        return kit;
    }
}
