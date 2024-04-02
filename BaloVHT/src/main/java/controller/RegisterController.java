		package controller;
		
		import jakarta.servlet.DispatcherType;
		import jakarta.servlet.RequestDispatcher;
		import jakarta.servlet.ServletException;
		import jakarta.servlet.annotation.WebServlet;
		import jakarta.servlet.http.HttpServlet;
		import jakarta.servlet.http.HttpServletRequest;
		import jakarta.servlet.http.HttpServletResponse;
		import java.io.IOException;
		import java.sql.Connection;
		import java.sql.DriverManager;
		import java.sql.PreparedStatement;
		import java.sql.SQLException;
		
		/**
		 * Servlet implementation class RegisterController
		 */
		public class RegisterController extends HttpServlet {
		    private static final long serialVersionUID = 1L;
		
		    /**
		     * @see HttpServlet#HttpServlet()
		     */
		    public RegisterController() {
		        super();
		        // TODO Auto-generated constructor stub
		    }
		
		    /**
		     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
		     */
		    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		        RequestDispatcher rd = request.getRequestDispatcher("/view/register.jsp");
		        rd.forward(request, response);
		    }
		
		    /**
		     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
		     */
		    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		        String email = request.getParameter("email");
		        String password = request.getParameter("password");
		        String repass = request.getParameter("repass");
		        RequestDispatcher dispatcher = request.getRequestDispatcher("/view/register.jsp");
		        Connection con = null;
		        try {
		            Class.forName("com.mysql.cj.jdbc.Driver");
		            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/balovht?useSSL=false&allowPublicKeyRetrieval=true", "root", "123456789");
		            
		            String query = "INSERT INTO user (email, password) VALUES (?, ?)";
		            PreparedStatement pst = con.prepareStatement(query);
		            pst.setString(1, email);
		            pst.setString(2, password);
		
		            int rowCount = pst.executeUpdate();
		            
		            if (rowCount > 0) {
		                request.setAttribute("status", "success");
		            } else {
		                request.setAttribute("status", "failed");
		            }
		        } catch (Exception e) {
		            e.printStackTrace();
		        } finally {
		            try {
		                if (con != null) {
		                    con.close();
		                }
		            } catch (SQLException e) {
		                e.printStackTrace();
		            }
		        }
		        dispatcher.forward(request, response);
		    }
		}
