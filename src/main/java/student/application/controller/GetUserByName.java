package student.application.controller;

import student.application.entity.User;
import student.application.persistence.ProjectDao;

import java.util.List;

public class GetUserByName {
    public User getUserByName(String name) {
        ProjectDao dao = new ProjectDao(User.class);
        User retrievedUser = null;
        List<User> userList = dao.findByPropertyEqual("username", name);

        for (User user : userList) {
            retrievedUser = user;
        }

        return retrievedUser;
    }
}
