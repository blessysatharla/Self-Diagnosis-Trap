
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.*;
import java.sql.*;

public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String email = req.getParameter("email");
        String password = req.getParameter("password");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/mental_WT",
                    "root",
                    "Blessy@123"
            );

            PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM users WHERE email=? AND password=?"
            );

            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                System.out.println("LOGIN SUCCESS");

                HttpSession session = req.getSession();
                session.setAttribute("user", email);

                res.sendRedirect(req.getContextPath() + "/index.jsp");
                return;
            } else {
                res.sendRedirect("login.jsp");
                return;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
