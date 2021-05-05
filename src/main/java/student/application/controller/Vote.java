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

/**
 * The type Vote.
 */
@WebServlet(
        urlPatterns = "/vote"
)
public class Vote extends HttpServlet {
    private final Logger logger = LogManager.getLogger(this.getClass());
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        ProjectDao dao = new ProjectDao(Draft.class);
        int draftParam = Integer.parseInt(req.getParameter("id"));
        Draft retrievedDraft = (Draft) dao.getById(draftParam);

        int upvotes = retrievedDraft.getUpvotes();
        int downvotes = retrievedDraft.getDownvotes();
        String voteType = req.getParameter("vote");

        if (voteType.equals("up")) {
            upvotes++;
        } else {
            downvotes++;
        }

        retrievedDraft.setUpvotes(upvotes);
        retrievedDraft.setDownvotes(downvotes);

        dao.saveOrUpdate(retrievedDraft);
        String message = "You successfully " + voteType + "voted " + retrievedDraft.getDraftName();

        req.setAttribute("message", message);

        logger.info("Vote Type: " + voteType);

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/home");
        dispatcher.forward(req, res);
    }
}
