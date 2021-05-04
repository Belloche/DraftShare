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
        urlPatterns = "/vote"
)
public class Vote extends HttpServlet {
    private final Logger logger = LogManager.getLogger(this.getClass());
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        ProjectDao dao = new ProjectDao(Draft.class);
        int draftParam = Integer.parseInt(req.getParameter("id"));
        Draft retrievedDraft = (Draft) dao.getById(draftParam);
        Draft newDraft = new Draft();

        int upvotes = retrievedDraft.getUpvotes();
        int downvotes = retrievedDraft.getDownvotes();
        String voteType = req.getParameter("vote");

        if (voteType.equals("up")) {
            upvotes++;
        } else {
            downvotes++;
        }

        newDraft.setUpvotes(upvotes);
        newDraft.setDownvotes(downvotes);

        newDraft.setUser(retrievedDraft.getUser());
        newDraft.setDescription(retrievedDraft.getDescription());
        newDraft.setDraftName(retrievedDraft.getDraftName());
        newDraft.setId(retrievedDraft.getId());
        
        newDraft.setTeam1(retrievedDraft.getTeam1());
        newDraft.setPick1(retrievedDraft.getPick1());
        newDraft.setPos1(retrievedDraft.getPos1());
        newDraft.setUni1(retrievedDraft.getUni1());

        newDraft.setTeam2(retrievedDraft.getTeam2());
        newDraft.setPick2(retrievedDraft.getPick2());
        newDraft.setPos2(retrievedDraft.getPos2());
        newDraft.setUni2(retrievedDraft.getUni2());

        newDraft.setTeam3(retrievedDraft.getTeam3());
        newDraft.setPick3(retrievedDraft.getPick3());
        newDraft.setPos3(retrievedDraft.getPos3());
        newDraft.setUni3(retrievedDraft.getUni3());

        newDraft.setTeam4(retrievedDraft.getTeam4());
        newDraft.setPick4(retrievedDraft.getPick4());
        newDraft.setPos4(retrievedDraft.getPos4());
        newDraft.setUni4(retrievedDraft.getUni4());

        newDraft.setTeam5(retrievedDraft.getTeam5());
        newDraft.setPick5(retrievedDraft.getPick5());
        newDraft.setPos5(retrievedDraft.getPos5());
        newDraft.setUni5(retrievedDraft.getUni5());

        newDraft.setTeam6(retrievedDraft.getTeam6());
        newDraft.setPick6(retrievedDraft.getPick6());
        newDraft.setPos6(retrievedDraft.getPos6());
        newDraft.setUni6(retrievedDraft.getUni6());

        newDraft.setTeam7(retrievedDraft.getTeam7());
        newDraft.setPick7(retrievedDraft.getPick7());
        newDraft.setPos7(retrievedDraft.getPos7());
        newDraft.setUni7(retrievedDraft.getUni7());

        newDraft.setTeam8(retrievedDraft.getTeam8());
        newDraft.setPick8(retrievedDraft.getPick8());
        newDraft.setPos8(retrievedDraft.getPos8());
        newDraft.setUni8(retrievedDraft.getUni8());

        newDraft.setTeam9(retrievedDraft.getTeam9());
        newDraft.setPick9(retrievedDraft.getPick9());
        newDraft.setPos9(retrievedDraft.getPos9());
        newDraft.setUni9(retrievedDraft.getUni9());

        newDraft.setTeam10(retrievedDraft.getTeam10());
        newDraft.setPick10(retrievedDraft.getPick10());
        newDraft.setPos10(retrievedDraft.getPos10());
        newDraft.setUni10(retrievedDraft.getUni10());

        newDraft.setTeam11(retrievedDraft.getTeam11());
        newDraft.setPick11(retrievedDraft.getPick11());
        newDraft.setPos11(retrievedDraft.getPos11());
        newDraft.setUni11(retrievedDraft.getUni11());

        newDraft.setTeam12(retrievedDraft.getTeam12());
        newDraft.setPick12(retrievedDraft.getPick12());
        newDraft.setPos12(retrievedDraft.getPos12());
        newDraft.setUni12(retrievedDraft.getUni12());

        newDraft.setTeam13(retrievedDraft.getTeam13());
        newDraft.setPick13(retrievedDraft.getPick13());
        newDraft.setPos13(retrievedDraft.getPos13());
        newDraft.setUni13(retrievedDraft.getUni13());

        newDraft.setTeam14(retrievedDraft.getTeam14());
        newDraft.setPick14(retrievedDraft.getPick14());
        newDraft.setPos14(retrievedDraft.getPos14());
        newDraft.setUni14(retrievedDraft.getUni14());

        newDraft.setTeam15(retrievedDraft.getTeam15());
        newDraft.setPick15(retrievedDraft.getPick15());
        newDraft.setPos15(retrievedDraft.getPos15());
        newDraft.setUni15(retrievedDraft.getUni15());

        newDraft.setTeam16(retrievedDraft.getTeam16());
        newDraft.setPick16(retrievedDraft.getPick16());
        newDraft.setPos16(retrievedDraft.getPos16());
        newDraft.setUni16(retrievedDraft.getUni16());

        newDraft.setTeam18(retrievedDraft.getTeam17());
        newDraft.setPick17(retrievedDraft.getPick17());
        newDraft.setPos17(retrievedDraft.getPos17());
        newDraft.setUni17(retrievedDraft.getUni17());

        newDraft.setTeam18(retrievedDraft.getTeam18());
        newDraft.setPick18(retrievedDraft.getPick18());
        newDraft.setPos18(retrievedDraft.getPos18());
        newDraft.setUni18(retrievedDraft.getUni18());

        newDraft.setTeam19(retrievedDraft.getTeam19());
        newDraft.setPick19(retrievedDraft.getPick19());
        newDraft.setPos19(retrievedDraft.getPos19());
        newDraft.setUni19(retrievedDraft.getUni19());

        newDraft.setTeam20(retrievedDraft.getTeam20());
        newDraft.setPick20(retrievedDraft.getPick20());
        newDraft.setPos20(retrievedDraft.getPos20());
        newDraft.setUni20(retrievedDraft.getUni20());

        newDraft.setTeam21(retrievedDraft.getTeam21());
        newDraft.setPick21(retrievedDraft.getPick21());
        newDraft.setPos21(retrievedDraft.getPos21());
        newDraft.setUni21(retrievedDraft.getUni21());

        newDraft.setTeam22(retrievedDraft.getTeam22());
        newDraft.setPick22(retrievedDraft.getPick22());
        newDraft.setPos22(retrievedDraft.getPos22());
        newDraft.setUni22(retrievedDraft.getUni22());

        newDraft.setTeam23(retrievedDraft.getTeam23());
        newDraft.setPick23(retrievedDraft.getPick23());
        newDraft.setPos23(retrievedDraft.getPos23());
        newDraft.setUni23(retrievedDraft.getUni23());

        newDraft.setTeam24(retrievedDraft.getTeam24());
        newDraft.setPick24(retrievedDraft.getPick24());
        newDraft.setPos24(retrievedDraft.getPos24());
        newDraft.setUni24(retrievedDraft.getUni24());

        newDraft.setTeam25(retrievedDraft.getTeam25());
        newDraft.setPick25(retrievedDraft.getPick25());
        newDraft.setPos25(retrievedDraft.getPos25());
        newDraft.setUni25(retrievedDraft.getUni25());

        newDraft.setTeam26(retrievedDraft.getTeam26());
        newDraft.setPick26(retrievedDraft.getPick26());
        newDraft.setPos26(retrievedDraft.getPos26());
        newDraft.setUni26(retrievedDraft.getUni26());

        newDraft.setTeam27(retrievedDraft.getTeam27());
        newDraft.setPick27(retrievedDraft.getPick27());
        newDraft.setPos27(retrievedDraft.getPos27());
        newDraft.setUni27(retrievedDraft.getUni27());

        newDraft.setTeam28(retrievedDraft.getTeam28());
        newDraft.setPick28(retrievedDraft.getPick28());
        newDraft.setPos28(retrievedDraft.getPos28());
        newDraft.setUni28(retrievedDraft.getUni28());

        newDraft.setTeam29(retrievedDraft.getTeam29());
        newDraft.setPick29(retrievedDraft.getPick29());
        newDraft.setPos29(retrievedDraft.getPos29());
        newDraft.setUni29(retrievedDraft.getUni29());

        newDraft.setTeam30(retrievedDraft.getTeam30());
        newDraft.setPick30(retrievedDraft.getPick30());
        newDraft.setPos30(retrievedDraft.getPos30());
        newDraft.setUni30(retrievedDraft.getUni30());

        newDraft.setTeam31(retrievedDraft.getTeam31());
        newDraft.setPick31(retrievedDraft.getPick31());
        newDraft.setPos31(retrievedDraft.getPos31());
        newDraft.setUni31(retrievedDraft.getUni31());

        newDraft.setTeam32(retrievedDraft.getTeam32());
        newDraft.setPick32(retrievedDraft.getPick32());
        newDraft.setPos32(retrievedDraft.getPos32());
        newDraft.setUni32(retrievedDraft.getUni32());

        dao.saveOrUpdate(newDraft);

        String message = "You successfully " + voteType + "voted " + newDraft.getDraftName();

        req.setAttribute("message", message);

        logger.info("Vote Type: " + voteType);

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/home");
        dispatcher.forward(req, res);
    }
}
