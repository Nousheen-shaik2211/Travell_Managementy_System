package servlet;

import Model.Package;
import dao.PackageDao;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/packageDetails")
public class PackageServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        try {

            int packageId =
                    Integer.parseInt(request.getParameter("id"));

            PackageDao packageDao = new PackageDao();

            Package pkg =
                    packageDao.getPackageById(packageId);

            request.setAttribute("package", pkg);

            request.getRequestDispatcher("package_details.jsp")
                   .forward(request, response);

        } catch (Exception e) {

            e.printStackTrace();

            response.sendRedirect("packages");
        }
    }
}