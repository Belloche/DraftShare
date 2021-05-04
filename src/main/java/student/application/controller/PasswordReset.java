package student.application.controller;

import student.application.entity.User;
import student.application.persistence.ProjectDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(
        urlPatterns = "/changePassword"
)
public class PasswordReset extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        ProjectDao dao = new ProjectDao(User.class);
        User newPasswordUser = new User();
        User oldUser = null;
        String oldPassword = req.getParameter("oldPassword");
        String newPassword = req.getParameter("newPassword");
        RequestDispatcher dispatcher = null;

        List<User> userList = dao.findByPropertyEqual("username", req.getUserPrincipal().getName());
        for (User user : userList) {
            oldUser = user;
        }

        if (oldPassword.equals(oldUser.getPassword())) {
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
