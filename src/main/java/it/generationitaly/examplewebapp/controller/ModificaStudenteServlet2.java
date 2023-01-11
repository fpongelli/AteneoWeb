package it.generationitaly.examplewebapp.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import it.generationitaly.examplewebapp.entity.Studente;
import it.generationitaly.examplewebapp.repository.StudenteRepository;
import it.generationitaly.examplewebapp.repository.impl.StudenteRepositoryImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/mod2")
public class ModificaStudenteServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

  private static StudenteRepository studenteRepository = new StudenteRepositoryImpl();
	
  protected void doPost(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		int matricola = Integer.parseInt(request.getParameter("matricola"));
		String codiceFiscale = request.getParameter("codiceFiscale");
		String nome = request.getParameter("nome");
		String cognome = request.getParameter("cognome");
		String dataNascitaAsString = request.getParameter("dataNascita");
		String sesso = request.getParameter("sesso");
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date dataNascita = null;
		
		System.out.println(id);
	
		try {
			dataNascita = sdf.parse(dataNascitaAsString);
		} catch (ParseException e) {
			
		}

		boolean hasErrors = false;
		
		if (sesso == null) {
			request.setAttribute("error-sesso", "insert necessario");
			hasErrors = true;
		}
		
		if (hasErrors == true) { 
            request.getRequestDispatcher("Modifica.jsp").forward(request, response);
            return;
        }
		
		Studente studente = new Studente();
		
		studente.setId(id);
		studente.setMatricola(matricola);
		studente.setCodiceFiscale(codiceFiscale);
		studente.setNome(nome);
		studente.setCognome(cognome);
		studente.setDataNascita(dataNascita);
		studente.setSesso(sesso.charAt(0));
		
		studenteRepository.update(studente);

		
		response.sendRedirect("ListaStudentiServlet");

	}

}
