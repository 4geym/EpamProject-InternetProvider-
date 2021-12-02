package web;

import dao.LoginDAO;
import model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/login")
public class UserLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public UserLoginServlet() {
        super();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String role = request.getParameter("role");

        LoginDAO userDao = new LoginDAO();

        User user = null;
        try {
            user = userDao.checkLogin(email, password, role);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        String destPage = "/WEB-INF/view/login.jsp";

        if (user != null && role.equals("Admin")) {
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            destPage = "/WEB-INF/view/Admin.jsp";
        } else if (user != null && role.equals("User")) {
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            destPage = "/WEB-INF/view/User.jsp";
        }
        else {
            String message = "~~~~~~~~~~~~";
            request.setAttribute("message", message);
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
        dispatcher.forward(request, response);
    }
}