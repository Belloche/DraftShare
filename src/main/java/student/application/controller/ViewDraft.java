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

/**
 * Servlet that queries the database with the entered parameter and forwards the results to viewDraft.jsp
 * @author Zane Miller
 * @version 1.1 5-10-2021
 */
@WebServlet(
        urlPatterns = {"/viewDraft"}
)

public class ViewDraft extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        ProjectDao dao = new ProjectDao(Draft.class);
        int draftParam = Integer.parseInt(req.getParameter("draft"));
        Draft draft = (Draft) dao.getById(draftParam);

        req.setAttribute("draft", draft);

        if (req.getUserPrincipal().getName().equals(draft.getUser())) {
            req.setAttribute("author", "true");
        }

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/viewDraft.jsp");
        dispatcher.forward(req, res);
    }
}
