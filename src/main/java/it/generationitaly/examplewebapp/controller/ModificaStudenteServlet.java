package it.generationitaly.examplewebapp.controller;

import java.io.IOException;

import it.generationitaly.examplewebapp.entity.Studente;
import it.generationitaly.examplewebapp.repository.StudenteRepository;
import it.generationitaly.examplewebapp.repository.impl.StudenteRepositoryImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/mod1")
public class ModificaStudenteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static StudenteRepository studenteRepository = new StudenteRepositoryImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	int id = Integer.parseInt(request.getParameter("id"));
	
	Studente studente = studenteRepository.findById(id);
	request.setAttribute("studente", studente);
	request.getRequestDispatcher("Modifica.jsp").forward(request, response);
	
	}

}
