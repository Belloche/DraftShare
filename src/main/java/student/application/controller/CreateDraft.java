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


    }
}
