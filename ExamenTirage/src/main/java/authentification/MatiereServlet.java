package authentification;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import authentificationrole.models.*;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
 /* Servlet implementation class MatiereServlet
 */
public class MatiereServlet extends HttpServlet {
	  private MatiereDAO matiereDAO;
	    private GroupeDAO groupeDAO;
	    private UserDAO userDAO;
	    private MatiereGroupeDAO matieregroupeDAO;

	    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        matiereDAO = new MatiereDAO();      
	        List<Matiere> matieres = matiereDAO.getAllMatieres();           
	        request.setAttribute("matieres", matieres);                             
	        RequestDispatcher dispatcher = request.getRequestDispatcher("AddMatiere.jsp");
	        dispatcher.forward(request, response);      
	    }

	    public static List<User> getEnseignant(HttpServletRequest request) {
	        UserDAO userDAO = new UserDAO();
	        return userDAO.getEnseignants();
	    }

	    public static List<Groupe> getGroupe(HttpServletRequest request) {
	        GroupeDAO groupeDAO = new GroupeDAO();
	        return groupeDAO.getAllGroupes();
	    }
	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        // Récupération des paramètres depuis la requête
	        String nomMatiere = request.getParameter("nomMatiere");
	        int idEnseignant = Integer.parseInt(request.getParameter("enseignants")); // Retrieve the selected enseignant's idUser

	        String[] groupeIdsParam = request.getParameterValues("groupes");
	        Matiere matiere = new Matiere();
	        matiere.setNomMatiere(nomMatiere);
	        matiere.setIdEnseignant(idEnseignant);

	        // Liste pour stocker les ID des groupes sélectionnés
	        List<Integer> groupeIds = new ArrayList<>();
	        if (groupeIdsParam != null) {
	            for (String groupeIdStr : groupeIdsParam) {
	                groupeIds.add(Integer.parseInt(groupeIdStr));
	            }
	        }

	        // Instance de MatiereDAO pour effectuer les opérations sur la base de données
	        MatiereDAO matiereDAO = new MatiereDAO();

	        // Ajout de la matière dans la base de données avec les enseignants associés
	        matiereDAO.addMatiere(matiere, groupeIds); // Pass groupeIds to the method

	        // Redirection vers la page de tableau de bord de l'enseignant
	        response.sendRedirect("Administration.jsp");
	    }

	}