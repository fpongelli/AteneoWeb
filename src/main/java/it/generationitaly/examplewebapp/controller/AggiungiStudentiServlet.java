package it.generationitaly.examplewebapp.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import it.generationitaly.examplewebapp.entity.Contatti;
import it.generationitaly.examplewebapp.entity.Studente;
import it.generationitaly.examplewebapp.repository.ContattiRepository;
import it.generationitaly.examplewebapp.repository.StudenteRepository;
import it.generationitaly.examplewebapp.repository.impl.ContattiRepositoryImpl;
import it.generationitaly.examplewebapp.repository.impl.StudenteRepositoryImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/AggiungiStudentiServlet")
public class AggiungiStudentiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
private StudenteRepository studenteRepository = new StudenteRepositoryImpl();
private ContattiRepository contattiRepository = new ContattiRepositoryImpl();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int matricola = Integer.parseInt(request.getParameter("matricola"));
		String codiceFiscale = request.getParameter("codiceFiscale");
		String nome = request.getParameter("nome");
		String cognome = request.getParameter("cognome");
		String dataNascitaAsString = request.getParameter("dataNascita");
		String sesso = request.getParameter("sesso");
		String eMail = request.getParameter("eMail");
		String telefono = request.getParameter("telefono");
		String domicilio = request.getParameter("domicilio");
		
		
		
		
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-DD");
	Date dataNascita = null;
	try {
		dataNascita = sdf.parse(dataNascitaAsString);
	}catch (ParseException e) {
		
	}
		
		Contatti contatti = new Contatti ();
		contatti.seteMail(eMail);
		contatti.setTelefono(telefono);
		contatti.setDomicilio(domicilio);
		
		
		contattiRepository.save(contatti);
		
		
		Studente studente = new Studente();
		
		studente.setMatricola(matricola);
		studente.setCodiceFiscale(codiceFiscale);
		studente.setNome(nome);
		studente.setCognome(cognome);
		studente.setDataNascita(dataNascita);
		studente.setSesso(sesso.charAt(0));
		
		studente.setContatti(contatti);
		
		studenteRepository.aggiungi(studente);
		
		response.sendRedirect("ListaStudentiServlet");
		
	}

}
