package authentificationrole.models;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import authentificationrole.models.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
public class DemandeTirageDAO {
	 private Connection connection;

	    // Constructor to initialize the connection
	    public DemandeTirageDAO() {
	        connection = DBUtil.getConnection();
	    }

	    // Method to insert data into the 'tirage' table
	    public void insertTirage(String enseignantName, String matiereName, String groupeName, String dateTirage, String fichier ,String number) throws SQLException {
	        String query = "INSERT INTO tirage (enseignant_name, matiere_name, groupe_name, date_tirage, fichier,nomber) VALUES (?, ?, ?, ?, ?,?)";

	        try (PreparedStatement pstmt = connection.prepareStatement(query)) {
	            pstmt.setString(1, enseignantName);
	            pstmt.setString(2, matiereName);
	            pstmt.setString(3, groupeName);
	            pstmt.setString(4, dateTirage);
	            pstmt.setString(5, fichier);
	            pstmt.setString(6, number);

	            pstmt.executeUpdate();
	        } catch (SQLException e) {
	            // Handle any exceptions
	            e.printStackTrace();
	            throw e;
	        }
	    }
	
	}