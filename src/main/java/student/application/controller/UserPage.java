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

/**
 * Servlet that queries database with the logged in user and forwards to userPage.jsp with credentials
 * @author Zane Miller
 * @version 1.0 5-10-2021
 */
@WebServlet(
        urlPatterns = "/userPage"
)
public class UserPage extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        ProjectDao draftDao = new ProjectDao(Draft.class);
        GetUserByName getUser = new GetUserByName();
        User retrievedUser = getUser.getUserByName(req.getUserPrincipal().getName());

        req.setAttribute("userDrafts", draftDao.findByPropertyEqual("user", retrievedUser.getUsername()));
        req.setAttribute("user", retrievedUser);

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/userPage.jsp");
        dispatcher.forward(req, res);
    }
}
