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

        List<Map<String, Object>> planos = new ArrayList<>();

        planos.add(createPlano("Plano Essencial",
                "Perfeito para iniciantes e apreciadores casuais.",
                new String[]{"1 vinho selecionado", "Guia de harmonização e curiosidades"},
                "R$ 79,90/mês", "Assinar", "#a4a019"));

        planos.add(createPlano("Plano Clássico",
                "Para quem quer aprofundar o paladar.",
                new String[]{"2 vinhos premium", "Conteúdos exclusivos sobre vinhos", "10% de desconto na loja"},
                "R$ 149,90/mês", "Assinar", "#993f3f"));

        planos.add(createPlano("Plano Reserva",
                "A experiência completa para os apaixonados por vinho.",
                new String[]{"3 rótulos especiais e safras diferenciadas", "Acesso a eventos exclusivos", "15% de desconto na loja"},
                "R$ 229,90/mês", "Assinar", "#b89c6d"));

        planos.add(createPlano("Plano Empresarial",
                "Leve a experiência dos melhores vinhos para seu negócio.",
                new String[]{"Kits sob medida", "Preços especiais", "Brindes e eventos exclusivos"},
                null, "Solicite uma proposta", "#4b3c2f"));

        request.setAttribute("planos", planos);
        request.getRequestDispatcher("clube.jsp").forward(request, response);
    }

    private Map<String, Object> createPlano(String nome, String descricao, String[] beneficios, String preco, String botao, String cor) {
        Map<String, Object> plano = new HashMap<>();
        plano.put("nome", nome);
        plano.put("descricao", descricao);
        plano.put("beneficios", beneficios); // Agora é String[]!
        plano.put("preco", preco);
        plano.put("botao", botao);
        plano.put("cor", cor);
        return plano;
    }
}
