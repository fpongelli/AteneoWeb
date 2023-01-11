package it.generationitaly.examplewebapp.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "contatti")
public class Contatti {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;

	@Column(name = "eMail", unique = true, nullable = false)
	private String eMail;

	@Column(name = "telefono", nullable = false)
	private String telefono;

	@Column(name = "domicilio", nullable = false)
	private String domicilio;

	@OneToOne(mappedBy="contatti")
	private Studente studente;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String geteMail() {
		return eMail;
	}

	public void seteMail(String eMail) {
		this.eMail = eMail;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getDomicilio() {
		return domicilio;
	}

	public void setDomicilio(String domicilio) {
		this.domicilio = domicilio;
	}

	public Studente getStudente() {
		return studente;
	}

	public void setStudente(Studente studente) {
		this.studente = studente;
	}

	@Override
	public String toString() {
		return "Contatti [id=" + id + ", eMail=" + eMail + ", telefono=" + telefono + ", domicilio=" + domicilio + "]";
	}

	
	}
	
	

