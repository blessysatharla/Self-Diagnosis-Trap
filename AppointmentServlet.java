import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.*;
import java.sql.*;

public class AppointmentServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
    throws ServletException, IOException {

        // 🔥 ADD DEBUG HERE (TOP)
        System.out.println("APPOINTMENT SERVLET HIT 🚀");

        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String doctor = req.getParameter("doctor");
        String date = req.getParameter("date");
        String time = req.getParameter("time");

        // 🔥 PRINT VALUES
        System.out.println(name + " | " + email + " | " + doctor);

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/mental_WT", "root", "Blessy@123");

            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO appointments(name,email,doctor,date,time) VALUES(?,?,?,?,?)");

            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, doctor);
            ps.setString(4, date);
            ps.setString(5, time);

            int i = ps.executeUpdate();

            // 🔥 CHECK INSERT
            System.out.println("INSERTED: " + i);

            res.sendRedirect("appointment.jsp?success=1");

        } catch(Exception e){
            e.printStackTrace();
        }
    }
}