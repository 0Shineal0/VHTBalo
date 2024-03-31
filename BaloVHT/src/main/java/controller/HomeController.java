	package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Balo;
import model.User;
import service.BaloService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import com.mysql.cj.Session;

import dao.Balos;

/**
 * Servlet implementation class HomeController
 */
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeController() {
        super();
        
    }
    
    private void showHomePage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Balo> balos = BaloService.getAllBalos();
        request.setAttribute("homepage", balos);
        RequestDispatcher rd=request.getRequestDispatcher("/view/homepage.jsp");  
        rd.forward(request, response);
    }

    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        showHomePage(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
