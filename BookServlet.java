import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.sql.*;

public class BookServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
    throws ServletException, IOException {

        String doctor = req.getParameter("doctor");
        String date = req.getParameter("date");
        String time = req.getParameter("time");

        try {
            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO appointments(doctor,date,time_slot) VALUES(?,?,?)"
            );

            ps.setString(1, doctor);
            ps.setString(2, date);
            ps.setString(3, time);

            ps.executeUpdate();

        } catch(Exception e) {
            e.printStackTrace();
        }

        res.getWriter().println("<h2>✅ Slot Booked at " + time + "</h2>");
    }
}