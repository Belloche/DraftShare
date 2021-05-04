package student.application.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(
        urlPatterns = "/logout"
)
public class Logout extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String message = "You have logged out successfully";
        req.setAttribute("message", message);

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/home");
        dispatcher.forward(req, res);
    }
}
