package it.generationitaly.examplewebapp.repository;


import it.generationitaly.examplewebapp.entity.Utente;

public interface UtenteRepository {
	Utente findById(int id);
	
	Utente findByUsername(String username);
	
	void updateUtente (Utente utente);
	
	void saveUtente (Utente utente);
	
	void deleteByIdUtente (int id);
}
