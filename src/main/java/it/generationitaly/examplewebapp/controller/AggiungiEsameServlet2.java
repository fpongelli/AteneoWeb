package it.generationitaly.examplewebapp.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import it.generationitaly.examplewebapp.entity.Corso;
import it.generationitaly.examplewebapp.entity.Esame;
import it.generationitaly.examplewebapp.entity.Studente;
import it.generationitaly.examplewebapp.repository.CorsoRepository;
import it.generationitaly.examplewebapp.repository.EsameRepository;
import it.generationitaly.examplewebapp.repository.StudenteRepository;
import it.generationitaly.examplewebapp.repository.impl.CorsoRepositoryImpl;
import it.generationitaly.examplewebapp.repository.impl.EsameRepositoryImpl;
import it.generationitaly.examplewebapp.repository.impl.StudenteRepositoryImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/AggiungiEsameServlet2")
public class AggiungiEsameServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

 private static StudenteRepository studenteRepository = new StudenteRepositoryImpl();
 private static CorsoRepository corsoRepository = new CorsoRepositoryImpl();
 private static EsameRepository esameRepository = new EsameRepositoryImpl();
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		int idS = Integer.parseInt(request.getParameter("id"));
		Studente studente = studenteRepository.findById(idS);
		int idC = Integer.parseInt(request.getParameter("input-corso"));
		Corso corso = corsoRepository.findById(idC);
		
		int voto = Integer.parseInt(request.getParameter("voto"));
		
		String dataEsameAsString = request.getParameter("dataEsame");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date dataEsame = null;
		
		try {
			dataEsame = sdf.parse(dataEsameAsString);
		} catch (ParseException e) {
			
		}
		
		String lodeAsString = request.getParameter("lode");
		boolean lode = true;
		if(lodeAsString == null);
			lode = false;
		
			Esame esame = new Esame();
			esame.setStudente(studente);
			esame.setCorso(corso);
			esame.setDataEsame(dataEsame);
			esame.setVoto(voto);
			esame.setLode(lode);
			
			studente.getEsami().add(esame);
			esameRepository.aggiungi(esame);
			
			System.out.println(esame);
			response.sendRedirect("ListaStudentiServlet?id="+studente.getId());
	}

}
