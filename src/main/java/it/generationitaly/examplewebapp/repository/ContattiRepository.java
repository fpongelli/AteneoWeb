package it.generationitaly.examplewebapp.repository;

import java.util.List;

import it.generationitaly.examplewebapp.entity.Contatti;

public interface ContattiRepository {
		void save (Contatti contatti);
		void update (Contatti contatti);
		void delete (Contatti contatti);
		Contatti findByid (int id);
		List<Contatti> findAll();
		
}
