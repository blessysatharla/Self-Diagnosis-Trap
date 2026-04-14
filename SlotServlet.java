
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.sql.*;

public class SlotServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
    throws ServletException, IOException {

        String doctor = req.getParameter("doctor");
        String date = req.getParameter("date");

        req.setAttribute("doctor", doctor);
        req.setAttribute("date", date);

        RequestDispatcher rd = req.getRequestDispatcher("slots.jsp");
        rd.forward(req, res);
    }
}