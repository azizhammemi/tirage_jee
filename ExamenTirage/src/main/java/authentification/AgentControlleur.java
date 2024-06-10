package authentification;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.*;
import java.util.logging.Logger;

import authentificationrole.models.DBUtil;
import authentificationrole.models.DemandeTirageDAO;
import authentificationrole.models.Matiere;
import authentificationrole.models.MatiereDAO;
import authentificationrole.models.Tirage;
import authentificationrole.models.Tiragedao;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
@WebServlet("/agent")
public class AgentControlleur extends HttpServlet {
    
	  private static final long serialVersionUID = 1L;
	    private Tiragedao tirageDAO;
	    private static final String UPLOAD_DIR = "C:\\Users\\ASUS\\Downloads\\ExamenTirage\\src\\main\\webapp\\apple_pdf";

	    public AgentControlleur() {
	        super();
	        this.tirageDAO = new Tiragedao();
	    }

	    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        String action = request.getParameter("action");
	        if ("downloadFile".equals(action)) {
	            downloadFile(request, response);
	        } else {
	            List<Tirage> dataList = getAllTirages(request);
	            request.setAttribute("dataList", dataList);
	            request.getRequestDispatcher("AgentTirage.jsp").forward(request, response);
	        }
	       }


	    public static List<Tirage> getAllTirages(HttpServletRequest request) {
	    	
	        Tiragedao tiragedao = new Tiragedao();
	        return tiragedao.getAllTirage();
	    }
	    
	    public static void downloadFile(HttpServletRequest request, HttpServletResponse response) throws IOException {
	        String fileName = request.getParameter("fileName");
	        if (fileName == null || fileName.isEmpty()) {
	            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "File name is missing");
	            return;
	        }

	        String UPLOAD_DIR = "C:\\Users\\ASUS\\Downloads\\ExamenTirage\\src\\main\\webapp\\apple_pdf";
	        File file = new File(UPLOAD_DIR, fileName);
	        if (!file.exists()) {
	            response.sendError(HttpServletResponse.SC_NOT_FOUND, "File not found");
	            return;
	        }

	        response.setContentType("application/octet-stream");
	        response.setHeader("Content-Disposition", "attachment;filename=" + fileName);
	        try (FileInputStream in = new FileInputStream(file);
	             OutputStream out = response.getOutputStream()) {

	            byte[] buffer = new byte[4096];
	            int bytesRead;
	            while ((bytesRead = in.read(buffer)) != -1) {
	                out.write(buffer, 0, bytesRead);
	            }
	        }
	    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        // Appeler la méthode doGet pour traiter les requêtes POST de la même manière que les requêtes GET
        doGet(request, response);
    }
}
