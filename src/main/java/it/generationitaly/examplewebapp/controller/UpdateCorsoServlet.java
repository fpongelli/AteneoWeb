package it.generationitaly.examplewebapp.controller;

import java.io.IOException;

import it.generationitaly.examplewebapp.entity.Corso;
import it.generationitaly.examplewebapp.entity.Studente;
import it.generationitaly.examplewebapp.repository.CorsoRepository;
import it.generationitaly.examplewebapp.repository.impl.CorsoRepositoryImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/mod4")
public class UpdateCorsoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static CorsoRepository corsoRepository = new CorsoRepositoryImpl();
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		int cfu = Integer.parseInt(request.getParameter("cfu"));
		String codice = request.getParameter("codice");
		String nome = request.getParameter("nome");
	

		Corso corso = corsoRepository.findById(id);
		
		corso.setCfu(cfu);
		corso.setCodice(codice);
		corso.setNome(nome);
		
		corsoRepository.update(corso);

		
		response.sendRedirect("ListaCorsiServlet");
	}

}
