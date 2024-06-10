package authentificationrole.models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class MatiereDAO {
	private Connection connection;

    public MatiereDAO() {
        connection = DBUtil.getConnection();
    }

    public void addMatiere(Matiere matiere) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(
                "INSERT INTO matiere (nomMatiere, idEnseignant, idGroupe) VALUES (?, ?, ?)"
            );
            preparedStatement.setString(1, matiere.getNomMatiere());
            preparedStatement.setInt(2, matiere.getIdEnseignant());
            preparedStatement.setInt(3, matiere.getIdGroupe());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Matiere> getAllMatieres() {
        List<Matiere> matieres = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM matiere");
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                Matiere matiere = new Matiere();
                matiere.setIdMatiere(rs.getInt("idMatiere"));
                matiere.setNomMatiere(rs.getString("nomMatiere"));
                matiere.setIdEnseignant(rs.getInt("idEnseignant"));
                matiere.setIdGroupe(rs.getInt("idGroupe"));
                matieres.add(matiere);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return matieres;
    }
    
    public List<Matiere> getAllMatieresForEnseignant(int idUser) {
        List<Matiere> matieres = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM matiere WHERE idEnseignant = ?");
            preparedStatement.setInt(1, idUser);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                Matiere matiere = new Matiere();
                matiere.setIdMatiere(rs.getInt("idMatiere"));
                matiere.setNomMatiere(rs.getString("nomMatiere"));
                matiere.setIdEnseignant(rs.getInt("idEnseignant"));
                matiere.setIdGroupe(rs.getInt("idGroupe"));
                matieres.add(matiere);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return matieres;
    }


    public void addMatiere(Matiere matiere, List<Integer> groupeIds) {
        try {
            // Insert matiere into matiere table
            PreparedStatement preparedStatement = connection.prepareStatement(
                "INSERT INTO matiere (nomMatiere, idEnseignant, idGroupe) VALUES (?, ?, ?)"
            );
            preparedStatement.setString(1, matiere.getNomMatiere());
            preparedStatement.setInt(2, matiere.getIdEnseignant());
            preparedStatement.setInt(3, groupeIds.get(0)); // Assuming only one groupe per matiere
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public List<Matiere> getMatieresForEnseignant(int idEnseignant) {
        List<Matiere> matieres = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM matiere WHERE idEnseignant = ?");
            preparedStatement.setInt(1, idEnseignant);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                Matiere matiere = new Matiere();
                matiere.setIdMatiere(rs.getInt("idMatiere"));
                matiere.setNomMatiere(rs.getString("nomMatiere"));
                matiere.setIdEnseignant(rs.getInt("idEnseignant"));
                matiere.setIdGroupe(rs.getInt("idGroupe"));
                matieres.add(matiere);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return matieres;
    }
}