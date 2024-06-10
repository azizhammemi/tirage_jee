package authentificationrole.models;


public class Tirage {
	private int id;
    private String enseignantName;
    private String matiereName;
    private String groupeName;
    private String dateTirage;
    private int nomber;
    private String fichier;

    public Tirage() {}

    public Tirage(int id, String enseignantName, String matiereName, String groupeName, String dateTirage, int nomber, String fichier) {
        this.id = id;
        this.enseignantName = enseignantName;
        this.matiereName = matiereName;
        this.groupeName = groupeName;
        this.dateTirage = dateTirage;
        this.nomber = nomber;
        this.fichier = fichier;
    }

    // Getters and Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }
    public String getEnseignantName() { return enseignantName; }
    public void setEnseignantName(String enseignantName) { this.enseignantName = enseignantName; }
    public String getMatiereName() { return matiereName; }
    public void setMatiereName(String matiereName) { this.matiereName = matiereName; }
    public String getGroupeName() { return groupeName; }
    public void setGroupeName(String groupeName) { this.groupeName = groupeName; }
    public String getDateTirage() { return dateTirage; }
    public void setDateTirage(String dateTirage) { this.dateTirage = dateTirage; }
    public int getNomber() { return nomber; }
    public void setNomber(int nomber) { this.nomber = nomber; }
    public String getFichier() { return fichier; }
    public void setFichier(String fichier) { this.fichier = fichier; }
}
