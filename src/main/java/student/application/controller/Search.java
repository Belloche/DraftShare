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
import java.util.List;

/**
 * Servlet that takes an entered search term and selected search type and queries the database for any drafts matching
 * the variables
 * @author Zane Miller
 * @version 1.0 5-10-2021
 */
@WebServlet(
        urlPatterns = "/search"
)
public class Search extends HttpServlet {
    private final Logger logger = LogManager.getLogger(this.getClass());

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String searchTerm = req.getParameter("searchTerm");
        String searchType = req.getParameter("searchType");
        ProjectDao dao = new ProjectDao(Draft.class);
        List<Draft> results = null;

        if (searchTerm != null) {
            results = dao.findByPropertyEqual(searchType, searchTerm);

            if (results.isEmpty()) {
                req.setAttribute("emptyResults", "true");
            }

            req.setAttribute("results", results);
            req.setAttribute("term", searchTerm);
        } else {
            req.setAttribute("emptySearch", "true");
        }

        if (searchType != null) {
            if (searchType.equals("draftName")) {
                req.setAttribute("draftNameSelected", "checked");
            } else if (searchType.equals("user")) {
                req.setAttribute("userNameSelected", "checked");
            }
        }

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/search.jsp");
        dispatcher.forward(req, res);
    }
}
