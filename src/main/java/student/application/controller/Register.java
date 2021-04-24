package student.application.controller;

import student.application.entity.User;
import student.application.persistence.ProjectDao;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(
        urlPatterns = "/registerUser"
)
public class Register extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) {
        ProjectDao dao = new ProjectDao(User.class);
        User newUser = new User();
    }
}
