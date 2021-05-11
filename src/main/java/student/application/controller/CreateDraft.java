package student.application.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import student.application.entity.Draft;
import student.application.entity.User;
import student.application.persistence.ProjectDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;

/**
 * Servlet for Adding a Draft to the DB and forwarding to a confirmation page
 * @author Zane Miller
 * @version 1.0 5-10-2021
 */
@WebServlet(
        urlPatterns = "/createDraft"
)

public class CreateDraft extends HttpServlet {
    private  final Logger logger = LogManager.getLogger(this.getClass());

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        ProjectDao dao = new ProjectDao(Draft.class);
        Draft newDraft = new Draft();
        GetUserByName getUser = new GetUserByName();
        User user = getUser.getUserByName(req.getUserPrincipal().getName());

        newDraft.setDescription(req.getParameter("description"));
        newDraft.setUserId(user.getId());
        newDraft.setUser(user.getUsername());
        newDraft.setDraftName(req.getParameter("draftName"));

        newDraft.setTeam1(req.getParameter("team1"));
        newDraft.setPick1(req.getParameter("pick1"));
        newDraft.setPos1(req.getParameter("pos1"));
        newDraft.setUni1(req.getParameter("uni1"));

        newDraft.setTeam2(req.getParameter("team2"));
        newDraft.setPick2(req.getParameter("pick2"));
        newDraft.setPos2(req.getParameter("pos2"));
        newDraft.setUni2(req.getParameter("uni2"));

        newDraft.setTeam3(req.getParameter("team3"));
        newDraft.setPick3(req.getParameter("pick3"));
        newDraft.setPos3(req.getParameter("pos3"));
        newDraft.setUni3(req.getParameter("uni3"));

        newDraft.setTeam4(req.getParameter("team4"));
        newDraft.setPick4(req.getParameter("pick4"));
        newDraft.setPos4(req.getParameter("pos4"));
        newDraft.setUni4(req.getParameter("uni4"));

        newDraft.setTeam5(req.getParameter("team5"));
        newDraft.setPick5(req.getParameter("pick5"));
        newDraft.setPos5(req.getParameter("pos5"));
        newDraft.setUni5(req.getParameter("uni5"));

        newDraft.setTeam6(req.getParameter("team6"));
        newDraft.setPick6(req.getParameter("pick6"));
        newDraft.setPos6(req.getParameter("pos6"));
        newDraft.setUni6(req.getParameter("uni6"));

        newDraft.setTeam7(req.getParameter("team7"));
        newDraft.setPick7(req.getParameter("pick7"));
        newDraft.setPos7(req.getParameter("pos7"));
        newDraft.setUni7(req.getParameter("uni7"));

        newDraft.setTeam8(req.getParameter("team8"));
        newDraft.setPick8(req.getParameter("pick8"));
        newDraft.setPos8(req.getParameter("pos8"));
        newDraft.setUni8(req.getParameter("uni8"));

        newDraft.setTeam9(req.getParameter("team9"));
        newDraft.setPick9(req.getParameter("pick9"));
        newDraft.setPos9(req.getParameter("pos9"));
        newDraft.setUni9(req.getParameter("uni9"));

        newDraft.setTeam10(req.getParameter("team10"));
        newDraft.setPick10(req.getParameter("pick10"));
        newDraft.setPos10(req.getParameter("pos10"));
        newDraft.setUni10(req.getParameter("uni10"));

        newDraft.setTeam11(req.getParameter("team11"));
        newDraft.setPick11(req.getParameter("pick11"));
        newDraft.setPos11(req.getParameter("pos11"));
        newDraft.setUni11(req.getParameter("uni11"));

        newDraft.setTeam12(req.getParameter("team12"));
        newDraft.setPick12(req.getParameter("pick12"));
        newDraft.setPos12(req.getParameter("pos12"));
        newDraft.setUni12(req.getParameter("uni12"));

        newDraft.setTeam13(req.getParameter("team13"));
        newDraft.setPick13(req.getParameter("pick13"));
        newDraft.setPos13(req.getParameter("pos13"));
        newDraft.setUni13(req.getParameter("uni13"));

        newDraft.setTeam14(req.getParameter("team14"));
        newDraft.setPick14(req.getParameter("pick14"));
        newDraft.setPos14(req.getParameter("pos14"));
        newDraft.setUni14(req.getParameter("uni14"));

        newDraft.setTeam15(req.getParameter("team15"));
        newDraft.setPick15(req.getParameter("pick15"));
        newDraft.setPos15(req.getParameter("pos15"));
        newDraft.setUni15(req.getParameter("uni15"));

        newDraft.setTeam16(req.getParameter("team16"));
        newDraft.setPick16(req.getParameter("pick16"));
        newDraft.setPos16(req.getParameter("pos16"));
        newDraft.setUni16(req.getParameter("uni16"));

        newDraft.setTeam17(req.getParameter("team17"));
        newDraft.setPick17(req.getParameter("pick17"));
        newDraft.setPos17(req.getParameter("pos17"));
        newDraft.setUni17(req.getParameter("uni17"));

        newDraft.setTeam18(req.getParameter("team18"));
        newDraft.setPick18(req.getParameter("pick18"));
        newDraft.setPos18(req.getParameter("pos18"));
        newDraft.setUni18(req.getParameter("uni18"));

        newDraft.setTeam19(req.getParameter("team19"));
        newDraft.setPick19(req.getParameter("pick19"));
        newDraft.setPos19(req.getParameter("pos19"));
        newDraft.setUni19(req.getParameter("uni19"));

        newDraft.setTeam20(req.getParameter("team20"));
        newDraft.setPick20(req.getParameter("pick20"));
        newDraft.setPos20(req.getParameter("pos20"));
        newDraft.setUni20(req.getParameter("uni20"));

        newDraft.setTeam21(req.getParameter("team21"));
        newDraft.setPick21(req.getParameter("pick21"));
        newDraft.setPos21(req.getParameter("pos21"));
        newDraft.setUni21(req.getParameter("uni21"));

        newDraft.setTeam22(req.getParameter("team22"));
        newDraft.setPick22(req.getParameter("pick22"));
        newDraft.setPos22(req.getParameter("pos22"));
        newDraft.setUni22(req.getParameter("uni22"));

        newDraft.setTeam23(req.getParameter("team23"));
        newDraft.setPick23(req.getParameter("pick23"));
        newDraft.setPos23(req.getParameter("pos23"));
        newDraft.setUni23(req.getParameter("uni23"));

        newDraft.setTeam24(req.getParameter("team24"));
        newDraft.setPick24(req.getParameter("pick24"));
        newDraft.setPos24(req.getParameter("pos24"));
        newDraft.setUni24(req.getParameter("uni24"));

        newDraft.setTeam25(req.getParameter("team25"));
        newDraft.setPick25(req.getParameter("pick25"));
        newDraft.setPos25(req.getParameter("pos25"));
        newDraft.setUni25(req.getParameter("uni25"));

        newDraft.setTeam26(req.getParameter("team26"));
        newDraft.setPick26(req.getParameter("pick26"));
        newDraft.setPos26(req.getParameter("pos26"));
        newDraft.setUni26(req.getParameter("uni26"));

        newDraft.setTeam27(req.getParameter("team27"));
        newDraft.setPick27(req.getParameter("pick27"));
        newDraft.setPos27(req.getParameter("pos27"));
        newDraft.setUni27(req.getParameter("uni27"));

        newDraft.setTeam28(req.getParameter("team28"));
        newDraft.setPick28(req.getParameter("pick28"));
        newDraft.setPos28(req.getParameter("pos28"));
        newDraft.setUni28(req.getParameter("uni28"));

        newDraft.setTeam29(req.getParameter("team29"));
        newDraft.setPick29(req.getParameter("pick29"));
        newDraft.setPos29(req.getParameter("pos29"));
        newDraft.setUni29(req.getParameter("uni29"));

        newDraft.setTeam30(req.getParameter("team30"));
        newDraft.setPick30(req.getParameter("pick30"));
        newDraft.setPos30(req.getParameter("pos30"));
        newDraft.setUni30(req.getParameter("uni30"));

        newDraft.setTeam31(req.getParameter("team31"));
        newDraft.setPick31(req.getParameter("pick31"));
        newDraft.setPos31(req.getParameter("pos31"));
        newDraft.setUni31(req.getParameter("uni31"));

        newDraft.setTeam32(req.getParameter("team32"));
        newDraft.setPick32(req.getParameter("pick32"));
        newDraft.setPos32(req.getParameter("pos32"));
        newDraft.setUni32(req.getParameter("uni32"));

        int id = dao.insert(newDraft);

        req.setAttribute("id", id);

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/draftCreated.jsp");
        dispatcher.forward(req, res);
    }
}
