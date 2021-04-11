package formulaire;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EntrerPersonne
 */
@WebServlet(urlPatterns="/formulaire_inscription")
public class EntrerPersonne extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EntrerPersonne() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PersonneFormBean fb = new PersonneFormBean();
		fb.setNom(request.getParameter("nom"));
		fb.setPrenom(request.getParameter("prenom"));
		fb.setTelephone(request.getParameter("telephone"));
		fb.setSexe(request.getParameter("sexe"));
				
		
		request.setAttribute("client", fb);		
		
		
		fb.validate();
		
		if(fb.isValid()) {
			request.getRequestDispatcher("/suite.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("/formulaire_inscription.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
