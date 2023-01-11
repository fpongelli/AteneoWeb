package it.generationitaly.examplewebapp.repository;

import java.util.List;

import it.generationitaly.examplewebapp.entity.Corso;
import it.generationitaly.examplewebapp.entity.Studente;


public interface CorsoRepository{
			List<Corso> findAll(); 
			void aggiungi(Corso corso);
			void update (Corso corso);
			Corso findById(int id);
}
