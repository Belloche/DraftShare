package student.application.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import student.application.entity.Draft;
import student.application.persistence.ProjectDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(
        urlPatterns = "/deleteDraft"
)
public class DeleteDraft extends HttpServlet {
    private final Logger logger = LogManager.getLogger(this.getClass());
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        ProjectDao dao = new ProjectDao(Draft.class);
        Draft draft = (Draft) dao.getById(Integer.parseInt(req.getParameter("id")));

        dao.delete(draft);
        req.setAttribute("deleted", "true");
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/userPage");
        dispatcher.forward(req, res);
    }
}
