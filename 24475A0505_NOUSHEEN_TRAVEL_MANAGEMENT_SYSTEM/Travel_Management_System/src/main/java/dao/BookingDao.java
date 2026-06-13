package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import Model.Booking;

public class BookingDao {

    public boolean createBooking(Booking booking) {

        boolean status = false;

        try {

            Connection conn = DBConnection.getConnection();

            String sql = "INSERT INTO bookings "
                    + "(user_id, package_id, hotel_id, travel_date, num_people, total_price, status) "
                    + "VALUES (?, ?, ?, ?, ?, ?, ?)";

            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setInt(1, booking.getUserId());
            ps.setInt(2, booking.getPackageId());
            ps.setInt(3, booking.getHotelId());
            ps.setDate(4, booking.getTravelDate());
            ps.setInt(5, booking.getNumPeople());
            ps.setBigDecimal(6, booking.getTotalPrice());
            ps.setString(7, booking.getStatus());

            int rows = ps.executeUpdate();

            if (rows > 0) {
                status = true;
            }

            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }
}