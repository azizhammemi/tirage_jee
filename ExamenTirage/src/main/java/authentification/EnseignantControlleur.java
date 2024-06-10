package authentification;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.LogManager;
import java.util.logging.Logger;

import authentificationrole.models.Matiere;
import authentificationrole.models.MatiereDAO;
import authentificationrole.models.User;
import authentificationrole.models.UserDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;

import authentificationrole.models.MatiereDAO;
import authentificationrole.models.Matiere;

public class EnseignantControlleur extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private UserDAO userDAO;
	    public EnseignantControlleur() {
	        super();
	        // Initialize UserDAO in the constructor
	        userDAO = new UserDAO();
	    }
	  
	    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	      
	        RequestDispatcher dispatcher = request.getRequestDispatcher("Enseignant_Dashboard.jsp");
		    dispatcher.forward(request, response);
	        // Forward the request to the JSP for rendering
	    }
	 
	
	    public static List<Matiere> getMatieres(HttpServletRequest request) {
	        HttpSession session = request.getSession();
	        int idUser = (int) session.getAttribute("idUser");
	        MatiereDAO matiereDAO = new MatiereDAO();
	        return matiereDAO.getAllMatieresForEnseignant(idUser);
	    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
