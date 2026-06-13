package servlet;

import Model.User;
import dao.UserDao;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        try {

            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String email = request.getParameter("email");
            String fullName = request.getParameter("fullName");
            String phone = request.getParameter("phone");
            String address = request.getParameter("address");

            User user = new User();

            user.setUsername(username);
            user.setPassword(password);
            user.setEmail(email);
            user.setFullName(fullName);
            user.setPhone(phone);
            user.setAddress(address);
            user.setRole("customer");

            UserDao userDao = new UserDao();

            boolean success = userDao.registerUser(user);

            if (success) {

                request.setAttribute(
                        "message",
                        "Registration Successful!");

                request.getRequestDispatcher("login.jsp")
                       .forward(request, response);

            } else {

                request.setAttribute(
                        "message",
                        "Registration Failed!");

                request.getRequestDispatcher("register.jsp")
                       .forward(request, response);
            }

        } catch (Exception e) {

            e.printStackTrace();

            request.setAttribute(
                    "message",
                    "Error : " + e.getMessage());

            request.getRequestDispatcher("register.jsp")
                   .forward(request, response);
        }
    }
}