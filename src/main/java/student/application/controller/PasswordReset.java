package student.application.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import student.application.entity.User;
import student.application.persistence.ProjectDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Servlet that checks if the entered current password is correct, then updates the password to the new one
 * @author Zane Miller
 * @version 1.0 5-10-2021
 */
@WebServlet(
        urlPatterns = "/changePassword"
)
public class PasswordReset extends HttpServlet {
    private final Logger logger = LogManager.getLogger(this.getClass());
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        ProjectDao dao = new ProjectDao(User.class);
        User newPasswordUser = new User();
        GetUserByName getUserByName = new GetUserByName();

        String oldPassword = req.getParameter("oldPassword");
        String newPassword = req.getParameter("newPassword");
        RequestDispatcher dispatcher;
        User oldUser = getUserByName.getUserByName(req.getUserPrincipal().getName());
        String currentPassword = oldUser.getPassword();

        if (oldPassword.equals(currentPassword)) {
            newPasswordUser.setUsername(oldUser.getUsername());
            newPasswordUser.setPassword(newPassword);
            newPasswordUser.setId(oldUser.getId());

            dao.saveOrUpdate(newPasswordUser);

            req.setAttribute("passwordReset", "true");
            dispatcher = getServletContext().getRequestDispatcher("/userPage");
        } else {
            req.setAttribute("incorrect", "true");
            dispatcher = getServletContext().getRequestDispatcher("/changePassword.jsp");
        }

        dispatcher.forward(req, res);
    }
}
