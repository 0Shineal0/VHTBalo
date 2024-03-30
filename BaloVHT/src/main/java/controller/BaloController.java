package controller;

import jakarta.servlet.RequestDispatcher; 
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Balo;

import java.io.IOException;
import java.util.List;

import dao.Balos;

/**
 * Servlet implementation class BaloController
 */
public class BaloController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BaloController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		showBalos(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
String button = request.getParameter("button");
		
		switch (button) {
			case "add":
				addBalo(request, response);
				break;
			case "edit":
				editBalo(request, response);
				break;
			case "delete":
				deleteBalo(request, response);
				showBalos(request, response);
				break;
			case "save":
				saveBalo(request, response);
				showBalos(request, response);
				break;
			case "closebook":
				showBalos(request, response);
				break;
			case "close":
				System.out.print(button);
				response.sendRedirect("Home");
				break;
			default:
				showBalos(request, response);
				break;
		}
	}
	
	private void deleteBalo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String currID = request.getParameter("currBookID");
		request.setAttribute("currBookID", currID);
	    if (currID != null && !currID.isEmpty()) {
	        Balo baloToDelete = new Balo(currID, "","", 0);
	        boolean deleteSuccess = Balos.delete(baloToDelete);
	        if (deleteSuccess) {
	            showBalos(request, response);
	        }
	    }
	}

	
	private void showBalos(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Balo> balos = Balos.getAll();
		request.setAttribute("balos", balos);
		RequestDispatcher rd=request.getRequestDispatcher("/view/balos.jsp");  
        rd.forward(request, response);
	}
	private void addBalo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher rd=request.getRequestDispatcher("/view/balo.jsp");  
        rd.forward(request, response);
	}
	private void editBalo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String currID = request.getParameter("currBookID");
		
		request.setAttribute("currBookID", currID);
		
		RequestDispatcher rd=request.getRequestDispatcher("/view/balo.jsp");  
        rd.forward(request, response);
	}
	private void saveBalo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id").toString();
		String image = request.getParameter("image").toString();
		String name = request.getParameter("name").toString();
		double price = Double.parseDouble(request.getParameter("price").toString());
		Balo balo = new Balo(id,image,name,price);
		
		Balos.save(balo);
	}
	

}
