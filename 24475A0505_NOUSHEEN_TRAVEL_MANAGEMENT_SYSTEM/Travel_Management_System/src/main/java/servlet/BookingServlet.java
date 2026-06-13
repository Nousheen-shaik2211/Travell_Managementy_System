package servlet;

import Model.Booking;
import Model.User;
import dao.BookingDao;

import java.io.IOException;
import java.math.BigDecimal;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/booking")
public class BookingServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);

        if (session == null || session.getAttribute("user") == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        User user = (User) session.getAttribute("user");

        try {

            int packageId =
                    Integer.parseInt(request.getParameter("packageId"));

            String travelDateStr =
                    request.getParameter("travelDate");

            int numPeople =
                    Integer.parseInt(request.getParameter("numPeople"));

            Date travelDate =
                    Date.valueOf(travelDateStr);

            Booking booking = new Booking();

            booking.setUserId(user.getUserId());
            booking.setPackageId(packageId);
            booking.setHotelId(0); // No hotel selected
            booking.setTravelDate(travelDate);
            booking.setNumPeople(numPeople);

            // Example calculation
            booking.setTotalPrice(
                    new BigDecimal(numPeople * 1000));

            booking.setStatus("pending");

            BookingDao bookingDao = new BookingDao();

            boolean success =
                    bookingDao.createBooking(booking);

            if (success) {

                request.setAttribute(
                        "message",
                        "Booking Successful!");

                request.getRequestDispatcher(
                        "booking_success.jsp")
                        .forward(request, response);

            } else {

                request.setAttribute(
                        "message",
                        "Booking Failed!");

                request.getRequestDispatcher(
                        "booking.jsp")
                        .forward(request, response);
            }

        } catch (Exception e) {

            e.printStackTrace();

            request.setAttribute(
                    "message",
                    "Error : " + e.getMessage());

            request.getRequestDispatcher(
                    "booking.jsp")
                    .forward(request, response);
        }
    }
}