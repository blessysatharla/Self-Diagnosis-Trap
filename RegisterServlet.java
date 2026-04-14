import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.*;
import java.sql.*;

public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
    throws ServletException, IOException {

        // 🔥 DEBUG START
        System.out.println("Register servlet called");

        String name = req.getParameter("full_name");
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        System.out.println(name + " | " + email + " | " + password);
        // 🔥 DEBUG END

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/mental_WT",
                "root",
                "Blessy@123"
            );

            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO users(full_name,email,password) VALUES(?,?,?)"
            );

            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);

            int i = ps.executeUpdate();

            if(i > 0){
                System.out.println("INSERT SUCCESS ✅");
                res.sendRedirect("login.jsp");
            } else {
                System.out.println("INSERT FAILED ❌");
                res.getWriter().println("Registration failed");
            }

        } catch (Exception e) {
            System.out.println("ERROR OCCURRED ❌");
            e.printStackTrace(); // VERY IMPORTANT
        }
    }
}