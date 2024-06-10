package authentification;

import jakarta.jms.Connection;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Date;
import java.sql.SQLException;
import java.util.List;

import authentificationrole.models.DemandeTirageDAO;
import authentificationrole.models.DemandeTirageclass;
import authentificationrole.models.Tirage;
import authentificationrole.models.User;
import authentificationrole.models.UserDAO;

import jakarta.servlet.annotation.MultipartConfig;
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
maxFileSize = 1024 * 1024 * 50,     // 50MB
maxRequestSize = 1024 * 1024 * 100) // 100MB
public class TirageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    private DemandeTirageDAO demandeTirageDAO; // Define the DAO object

    public void init() throws ServletException {
        // Initialize your DemandeTirageDAO object here
        demandeTirageDAO = new DemandeTirageDAO(); // Don't forget to instantiate your DAO
        // You might need to handle exceptions during initialization
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    HttpSession session = request.getSession();
        String email = request.getParameter("email");
        String password = request.getParameter("password");
              
        User user = (User) session.getAttribute("authenticatedUser");
        // Ajout de l'utilisateur à la requête
        request.setAttribute("user", user);      
        RequestDispatcher dispatcher = request.getRequestDispatcher("DemandeTirage.jsp");
        dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    HttpSession session = request.getSession();
	    String enseignantName = (String) session.getAttribute("email");

	    // Récupérer les autres champs du formulaire
	    String matiereName = request.getParameter("matiereName");
        String groupeName = request.getParameter("groupeName");
        String dateTirage = request.getParameter("dateTirage");
        String number = request.getParameter("number");
        Part filePart = request.getPart("fichier");
        String fileName = extractFileName(filePart); // Extract the file name
        
        String uploadDir = "C:\\Users\\ASUS\\Downloads\\ExamenTirage\\src\\main\\webapp\\apple_pdf";
        Path uploadPath = Paths.get(uploadDir);

        // Create the directory if it doesn't exist
        if (!Files.exists(uploadPath)) {
            try {
                Files.createDirectories(uploadPath);
            } catch (IOException e) {
                e.printStackTrace();
                response.getWriter().println("Failed to create the upload directory.");
                return;
            }
        }

        // Save the file to the specified directory
        Path filePath = uploadPath.resolve(fileName);
        try (InputStream input = filePart.getInputStream()) {
            Files.copy(input, filePath);
        }

        try {
            // Save data into the database (without saving file to server)
            demandeTirageDAO.insertTirage(enseignantName, matiereName, groupeName, dateTirage, fileName, number);
            response.getWriter().println("Data inserted successfully!");
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().println("An error occurred while inserting data. Please try again.");
        }
    }

    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String item : items) {
            if (item.trim().startsWith("filename")) {
                return item.substring(item.indexOf("=") + 2, item.length() - 1);
            }
        }
        return "";
    }
}
