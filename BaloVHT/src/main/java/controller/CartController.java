package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Balo;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import dao.Balos;
import controller.HomeController;
public class CartController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Đọc dữ liệu từ cookie và chuyển chúng thành danh sách sản phẩm
        List<Balo> cartProducts = new ArrayList<>();
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().startsWith("product_")) {
                    String[] parts = cookie.getValue().split("\\|");
                    if (parts.length == 3) {
                        String id = cookie.getName().substring(8); // Lấy ID từ tên cookie
                        String name = parts[0];
                        double price = Double.parseDouble(parts[1]);
                        String image = parts[2];
                        Balo product = new Balo(id, name, image, price, image);
                        cartProducts.add(product);
                    }
                }
            }
        }
        
        // Đặt danh sách sản phẩm vào thuộc tính của request
        request.setAttribute("cartProducts", cartProducts);
        
        // Chuyển hướng tới trang Cart.jsp để hiển thị danh sách sản phẩm trong giỏ hàng
        RequestDispatcher dispatcher = request.getRequestDispatcher("/view/Cart.jsp");
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Xử lý khi người dùng thêm sản phẩm vào giỏ hàng từ homepage.jsp
        String productId = request.getParameter("productId"); // Lấy ID sản phẩm từ request
        // Tạo cookie cho sản phẩm
        Balo product = Balos.getById(productId); // Lấy thông tin sản phẩm từ cơ sở dữ liệu
        if (product != null) {
            Cookie cookie = new Cookie("product_" + product.getId(), product.getName() + "|" + product.getPrice() + "|" + product.getImage());
            cookie.setMaxAge(24 * 60 * 60); // Cookie hết hạn trong 1 ngày
            response.addCookie(cookie); // Thêm cookie vào phản hồi
        }

        // Chuyển hướng tới phương thức doGet để hiển thị danh sách sản phẩm trong giỏ hàng
        doGet(request, response);
    }
}