package controllers;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.util.*;

@WebServlet("/kits")
public class KitsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Map<String, String>> kits = new ArrayList<>();

        kits.add(createKit("1", "Kit Harmonização Tinto", "Inclui vinho tinto, taças e queijos artesanais", "199,90", "images/kit1.jpg"));
        kits.add(createKit("2", "Kit Rosé para Verão", "Vinho rosé refrescante com petiscos leves", "159,90", "images/kit2.jpg"));
        kits.add(createKit("3", "Kit Presente Premium", "Vinhos de guarda e acessórios refinados", "299,90", "images/kit3.jpg"));

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
