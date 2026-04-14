import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

public class QuizServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
    throws ServletException, IOException {

        int q1 = Integer.parseInt(req.getParameter("q1"));
        int q2 = Integer.parseInt(req.getParameter("q2"));
        int q3 = Integer.parseInt(req.getParameter("q3"));

        int score = q1 + q2 + q3;

        String result = "Normal";

        if(score > 5) result = "Mild";
        if(score > 10) result = "Moderate";
        if(score > 15) result = "Serious";

        res.sendRedirect("result.jsp?result=" + result);
    }
}