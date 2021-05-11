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
 * Servlet that takes a parameter of the vote type, up or down, and then sends it to processVote() and gets a message,
 * then updates the voted draft with its new vote count and forwards the message to the homepage for confirmation
 * @author Zane Miller
 * @version 1.0 5-10-2021
 */
@WebServlet(
        urlPatterns = "/vote"
)
public class Vote extends HttpServlet {
    private final Logger logger = LogManager.getLogger(this.getClass());
    private int upvotes;
    private int downvotes;


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        ProjectDao dao = new ProjectDao(Draft.class);
        int draftParam = Integer.parseInt(req.getParameter("id"));
        Draft retrievedDraft = (Draft) dao.getById(draftParam);

        upvotes = retrievedDraft.getUpvotes();
        downvotes = retrievedDraft.getDownvotes();
        String voteType = req.getParameter("vote");

        String message = processVote(voteType, retrievedDraft);
        retrievedDraft.setUpvotes(upvotes);
        retrievedDraft.setDownvotes(downvotes);
        dao.saveOrUpdate(retrievedDraft);

        req.setAttribute("message", message);

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/home");
        dispatcher.forward(req, res);
    }

    /**
     * Process vote.
     *
     * @param voteType the vote type
     */
    public String processVote(String voteType, Draft retrievedDraft) {
        String message = "You successfully " + voteType + "voted " + retrievedDraft.getDraftName();

        if (voteType.equals("up")) {
            upvotes++;
        } else {
            downvotes++;
        }

        return message;
    }
}
