package it.generationitaly.examplewebapp.controller;

import java.io.IOException;

import it.generationitaly.examplewebapp.entity.Corso;
import it.generationitaly.examplewebapp.repository.CorsoRepository;
import it.generationitaly.examplewebapp.repository.impl.CorsoRepositoryImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/mod3")
public class ModificaCorsiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static CorsoRepository corsoRepository = new CorsoRepositoryImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	int id = Integer.parseInt(request.getParameter("id"));
	
	Corso corso = corsoRepository.findById(id);
	request.setAttribute("corso", corso);
	request.getRequestDispatcher("ModificaCorsi.jsp").forward(request, response);
	
	}

}
