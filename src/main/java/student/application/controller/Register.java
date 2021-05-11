package student.application.controller;

import student.application.entity.Role;
import student.application.entity.User;
import student.application.persistence.ProjectDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet that takes entered credentials and inserts a user into the DB and forwards to the userPage with
 * the credentials and a confirmation message
 * @author Zane Miller
 * @version 1.0 5-10-2021
 */
@WebServlet(
        urlPatterns = "/registerUser"
)
public class Register extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        ProjectDao dao = new ProjectDao(User.class);
        User newUser = new User();

        ProjectDao roleDao = new ProjectDao(Role.class);
        Role newRole = new Role();

        newUser.setUsername(req.getParameter("username"));
        newUser.setPassword(req.getParameter("password"));

        int id = dao.insert(newUser);
        req.setAttribute("id",id);
        req.setAttribute("user", newUser);

        newRole.setUserId(id);
        newRole.setUserName(newUser.getUsername());
        newRole.setRoleName("user");

        roleDao.insert(newRole);

        req.setAttribute("created", "true");

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/userPage");
        dispatcher.forward(req, res);
    }
}
