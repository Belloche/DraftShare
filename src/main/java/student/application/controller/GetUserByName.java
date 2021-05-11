package student.application.controller;

import student.application.entity.User;
import student.application.persistence.ProjectDao;

import java.util.List;

/**
 * Class that uses the DAO findByPropertyEqual() to search the user database by username
 * @author Zane Miller
 * @version 1.0 5-10-2021
 */
public class GetUserByName {
    /**
     * Takes a username to search the database by
     *
     * @param name the username to be searched
     * @return the user found by username
     */
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
