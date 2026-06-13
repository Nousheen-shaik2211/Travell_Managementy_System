package servlet;

import dao.UserDao;
import Model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String username =
                request.getParameter("username");

        String password =
                request.getParameter("password");

        UserDao userDAO = new UserDao();

        User user =
                userDAO.loginUser(username, password);

        if (user != null) {

            HttpSession session =
                    request.getSession();

            session.setAttribute("user", user);
            session.setAttribute("role",
                    user.getRole());

            if ("admin".equals(user.getRole())) {

                response.sendRedirect(
                        "admin_dashboard.jsp");

            } else {

                response.sendRedirect(
                        "dashboard.jsp");
            }

        } else {

            request.setAttribute(
                    "message",
                    "Invalid username or password!");

            request.getRequestDispatcher(
                    "login.jsp")
                    .forward(request, response);
        }
    }
}