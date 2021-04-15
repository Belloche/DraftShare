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
        urlPatterns = "/createDraft"
)

public class CreateDraft extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        ProjectDao dao = new ProjectDao(Draft.class);
        Draft newDraft = new Draft();

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
    }
}
