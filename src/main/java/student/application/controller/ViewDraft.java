package student.application.controller;


import student.application.entity.Draft;
import student.application.persistence.ProjectDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.serial.SerialException;
import java.io.IOException;

@WebServlet(
        urlPatterns = {"/viewDraft"}
)

public class ViewDraft extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        ProjectDao dao = new ProjectDao(Draft.class);

        int draftParam = Integer.parseInt(req.getParameter("draft"));

        req.setAttribute("draft", dao.getById(draftParam));
        req.setAttribute("dao", dao);

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/viewDraft.jsp");
        dispatcher.forward(req, res);
    }
}
