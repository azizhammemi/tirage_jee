package authentificationrole.models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Tiragedao {
    private Connection connection;

    public Tiragedao() {
        connection = DBUtil.getConnection();
    }

    public List<Tirage> getAllTirage() {
        List<Tirage> tirages = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM tirage");
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                Tirage tirage = new Tirage();
                tirage.setId(rs.getInt("id"));
                tirage.setEnseignantName(rs.getString("enseignant_name"));
                tirage.setMatiereName(rs.getString("matiere_name"));
                tirage.setGroupeName(rs.getString("groupe_name"));
                tirage.setDateTirage(rs.getString("date_tirage"));
                tirage.setNomber(rs.getInt("nomber"));
                tirage.setFichier(rs.getString("fichier"));
                tirages.add(tirage);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return tirages;
    }
}
