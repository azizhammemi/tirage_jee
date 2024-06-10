package authentificationrole.models;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Date;

import authentificationrole.models.Enseignant;

public class DemandeTirageclass {
	 private int idtirage;
	    private int idEnseignant;
	    private int idMatiere;
	    private int idGroupe;
	    private Date dateReception;
	    private Date dateEmprunte;
	    private int nombreCopies;
	    private String documentPDF;

	    // Getters and setters
	    public int getIdtirage() { return idtirage; }
	    public void setIdtirage(int idtirage) { this.idtirage = idtirage; }

	    public int getIdEnseignant() { return idEnseignant; }
	    public void setIdEnseignant(int idEnseignant) { this.idEnseignant = idEnseignant; }

	    public int getIdMatiere() { return idMatiere; }
	    public void setIdMatiere(int idMatiere) { this.idMatiere = idMatiere; }

	    public int getIdGroupe() { return idGroupe; }
	    public void setIdGroupe(int idGroupe) { this.idGroupe = idGroupe; }

	    public Date getDateReception() { return dateReception; }
	    public void setDateReception(Date dateReception) { this.dateReception = dateReception; }

	    public Date getDateEmprunte() { return dateEmprunte; }
	    public void setDateEmprunte(Date dateEmprunte) { this.dateEmprunte = dateEmprunte; }

	    public int getNombreCopies() { return nombreCopies; }
	    public void setNombreCopies(int nombreCopies) { this.nombreCopies = nombreCopies; }

	    public String getDocumentPDF() { return documentPDF; }
	    public void setDocumentPDF(String documentPDF) { this.documentPDF = documentPDF; }
	}