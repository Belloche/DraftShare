package student.application.controller;


import student.application.entity.Draft;
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
        urlPatterns = "/userPage"
)
public class UserPage extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        ProjectDao dao = new ProjectDao(UserPage.class);
        ProjectDao draftDao = new ProjectDao(Draft.class);

        List<User> userList = dao.findByPropertyEqual("user_name", req.getUserPrincipal());
        String username = "";
        String password = "";

        for (User user : userList) {
            username = user.getUsername();
            password = user.getPassword();
        }

        req.setAttribute("userDrafts", draftDao.findByPropertyEqual("user", req.getUserPrincipal()));
        req.setAttribute("user", req.getUserPrincipal());
        req.setAttribute("username", username);
        req.setAttribute("password", password);

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/userPage.jsp");
        dispatcher.forward(req, res);
    }
}
