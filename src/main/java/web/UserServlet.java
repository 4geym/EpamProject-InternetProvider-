package web;

import model.User;
import dao.UserDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

public class UserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserDAO userDAO;

    public UserServlet() {
        this.userDAO = new UserDAO();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getServletPath();

        switch (action) {
            case "/new":
                showNewForm(req, resp);
                break;
            case "/insert":
                try {
                    insertUser(req, resp);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            case "/delete":
                try {
                    deleteUser(req, resp);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            case "/edit":
                try {
                    showEditForm(req, resp);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            case "/update":
                try {
                    updateUser(req, resp);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            default:
                //список дескрипторов - handle list
                try {
                    listUser(req, resp);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
        }
    }

    private void showNewForm(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/view/user-form.jsp");
        dispatcher.forward(req, resp);
    }

    private void insertUser(HttpServletRequest req, HttpServletResponse resp)
            throws SQLException, IOException {
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String contract = req.getParameter("contract");
        User newUser = new User(name, email, contract);
        userDAO.insertUser(newUser);
        resp.sendRedirect("list");
    }

    private void deleteUser(HttpServletRequest req, HttpServletResponse resp)
            throws SQLException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        userDAO.deleteUser(id);
        resp.sendRedirect("list");
    }

    private void showEditForm(HttpServletRequest req, HttpServletResponse resp)
            throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(req.getParameter("id"));
        User existingUser = userDAO.selectUser(id);
        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/view/user-form.jsp");
        req.setAttribute("user", existingUser);
        dispatcher.forward(req, resp);
    }

    private void updateUser(HttpServletRequest req, HttpServletResponse resp)
            throws SQLException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String contract = req.getParameter("contract");

        User book = new User(id, name, email, contract);
        userDAO.updateUser(book);
        resp.sendRedirect("list");
    }

    private void listUser(HttpServletRequest req, HttpServletResponse resp)
            throws SQLException, IOException, ServletException {
        List<User> listUser = userDAO.selectAllUsers();
        req.setAttribute("listUser", listUser);
        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/view/user-list.jsp");
        dispatcher.forward(req, resp);
    }
}
