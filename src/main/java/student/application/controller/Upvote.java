package student.application.controller;

import student.application.entity.Draft;
import student.application.persistence.ProjectDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(
        urlPatterns = "/upvote"
)
public class Upvote extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        ProjectDao dao = new ProjectDao(Draft.class);
        int draftParam = Integer.parseInt(req.getParameter("id"));
        Draft retrievedDraft = (Draft) dao.getById(draftParam);
        Draft newDraft = new Draft();

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

    }
}
