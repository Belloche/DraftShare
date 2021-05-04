package student.application.controller;

import student.application.entity.Draft;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import student.application.persistence.ProjectDao;

@WebServlet(
        urlPatterns = {"/home"}
)

public class Homepage extends HttpServlet {
    private final Logger logger = LogManager.getLogger(this.getClass());

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        ProjectDao dao = new ProjectDao(Draft.class);

        req.setAttribute("drafts", dao.getAll());

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/index.jsp");
        dispatcher.forward(req, res);
    }
}