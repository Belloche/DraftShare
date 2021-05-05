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

@WebServlet(
        urlPatterns = "/changePassword"
)
public class PasswordReset extends HttpServlet {
    private final Logger logger = LogManager.getLogger(this.getClass());
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        ProjectDao dao = new ProjectDao(User.class);
        User newPasswordUser = new User();
        String oldPassword = req.getParameter("oldPassword");
        String newPassword = req.getParameter("newPassword");
        RequestDispatcher dispatcher;
        User oldUser = null;
        String currentPassword = "";

        List<User> userList = dao.findByPropertyEqual("username", req.getRemoteUser());

        for (User user : userList) {
            oldUser = user;
            currentPassword = oldUser.getPassword();
        }

        logger.info("UserName: " + req.getRemoteUser());
        logger.info("Password: " + currentPassword);
        logger.info("User: " + oldUser.getUsername());

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
