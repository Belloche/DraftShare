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
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(
        urlPatterns = "/userPage"
)
public class UserPage extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        ProjectDao dao = new ProjectDao(User.class);
        ProjectDao draftDao = new ProjectDao(Draft.class);
        User retrievedUser = null;
        List<User> userList = dao.findByPropertyEqual("username", req.getUserPrincipal().getName());


        for (User user : userList) {
            retrievedUser = user;
        }

        req.setAttribute("userDrafts", draftDao.findByPropertyEqual("user", req.getUserPrincipal().getName()));
        req.setAttribute("user", retrievedUser);

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/userPage.jsp");
        dispatcher.forward(req, res);
    }
}
