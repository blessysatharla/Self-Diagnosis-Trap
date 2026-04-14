import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.*;
import java.sql.*;

public class ResultServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
    throws ServletException, IOException {

        int total = 0;

        try {
            for(int i = 1; i <= 12; i++){
                String val = req.getParameter("q" + i);
                if(val != null)
                    total += Integer.parseInt(val);
            }

            String result;
            if(total <= 5) result = "Low";
            else if(total <= 15) result = "Moderate";
            else result = "High";

            String email = (String) req.getSession().getAttribute("user");

            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/mental_WT", "root", "Blessy@123");

            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO results(email, score, result) VALUES(?,?,?)");

            ps.setString(1, email);
            ps.setInt(2, total);
            ps.setString(3, result);

            ps.executeUpdate();

            res.sendRedirect("result.jsp?score=" + total + "&result=" + result);

        } catch(Exception e){
            e.printStackTrace();
        }
    }
}