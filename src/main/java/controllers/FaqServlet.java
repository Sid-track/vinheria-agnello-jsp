package controllers;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.util.*;

@WebServlet("/faq")
public class FaqServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Map<String, String>> faqs = new ArrayList<>();

        faqs.add(createFaq("Como funciona o clube de vinhos?", "Você escolhe um plano e recebe vinhos selecionados todos os meses em sua casa."));
        faqs.add(createFaq("Posso cancelar minha assinatura a qualquer momento?", "Sim! Você pode cancelar quando quiser, sem taxas."));
        faqs.add(createFaq("Os vinhos são nacionais ou importados?", "Trabalhamos com ambos, priorizando qualidade e exclusividade."));
        faqs.add(createFaq("Qual o prazo de entrega?", "O prazo médio é de 5 a 7 dias úteis após a confirmação do pagamento."));

        request.setAttribute("faqs", faqs);
        request.getRequestDispatcher("faq.jsp").forward(request, response);
    }

    private Map<String, String> createFaq(String pergunta, String resposta) {
        Map<String, String> faq = new HashMap<>();
        faq.put("pergunta", pergunta);
        faq.put("resposta", resposta);
        return faq;
    }
}