package servlet;

import Model.Hotel;
import dao.HotelDao;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/hotels")
public class HotelServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        HotelDao hotelDao = new HotelDao();

        List<Hotel> hotels =
                hotelDao.getAllHotels();

        request.setAttribute(
                "hotels",
                hotels);

        request.getRequestDispatcher(
                "hotels.jsp")
                .forward(request, response);
    }
}