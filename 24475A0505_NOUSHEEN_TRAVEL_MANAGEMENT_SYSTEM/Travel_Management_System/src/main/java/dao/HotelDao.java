package dao;

import Model.Hotel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class HotelDao {

    public List<Hotel> getAllHotels() {

        List<Hotel> hotels = new ArrayList<>();

        try {

            Connection conn = DBConnection.getConnection();

            String sql = "SELECT * FROM hotels";

            PreparedStatement ps =
                    conn.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Hotel hotel = new Hotel();

                hotel.setHotelId(
                        rs.getInt("hotel_id"));

                hotel.setHotelName(
                        rs.getString("hotel_name"));

                hotel.setLocation(
                        rs.getString("location"));

                hotel.setRating(
                        rs.getBigDecimal("rating"));

                hotel.setPricePerNight(
                        rs.getBigDecimal("price_per_night"));

                hotel.setDescription(
                        rs.getString("description"));

                hotel.setImageUrl(
                        rs.getString("image_url"));

                hotels.add(hotel);
            }

            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return hotels;
    }

    public Hotel getHotelById(int hotelId) {

        Hotel hotel = null;

        try {

            Connection conn = DBConnection.getConnection();

            String sql =
                    "SELECT * FROM hotels WHERE hotel_id=?";

            PreparedStatement ps =
                    conn.prepareStatement(sql);

            ps.setInt(1, hotelId);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                hotel = new Hotel();

                hotel.setHotelId(
                        rs.getInt("hotel_id"));

                hotel.setHotelName(
                        rs.getString("hotel_name"));

                hotel.setLocation(
                        rs.getString("location"));

                hotel.setRating(
                        rs.getBigDecimal("rating"));

                hotel.setPricePerNight(
                        rs.getBigDecimal("price_per_night"));

                hotel.setDescription(
                        rs.getString("description"));

                hotel.setImageUrl(
                        rs.getString("image_url"));
            }

            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return hotel;
    }
}