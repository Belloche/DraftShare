package Persistence;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import student.application.entity.User;
import student.application.persistence.ProjectDao;
import testUtils.Database;
import static org.junit.Assert.*;

import java.util.List;

public class UserTests {
    ProjectDao userDao;

    @BeforeEach
    void setUp() {
        Database database = Database.getInstance();
        database.runSQL("cleandb.sql");
        userDao = new ProjectDao(User.class);
    }

    /**
     * User Tests
     */
    @Test
    void getUserByIdSuccess() {
        User retrievedUser = (User) userDao.getById(1);
        assertEquals(1, retrievedUser.getId());
        assertEquals("pwaite", retrievedUser.getUsername());
        assertEquals("d1556uy", retrievedUser.getPassword());
    }

    @Test
    void insertUserSuccess() {
        User newUser = new User();
        newUser.setUsername("testUser");
        newUser.setPassword("testPassword");
        int id = userDao.insert(newUser);
        assertNotEquals(0, id);
        User insertedUser = (User) userDao.getById(id);
        assertEquals("testUser", insertedUser.getUsername());
        assertEquals("testPassword", insertedUser.getPassword());
        assertEquals(id, insertedUser.getId());
    }

    @Test
    void updateUserSuccess() {
        String newUsername = "newUsername";
        User userToUpdate = (User) userDao.getById(2);
        userToUpdate.setUsername(newUsername);
        userDao.saveOrUpdate(userToUpdate);
        User userAfterUpdate = (User) userDao.getById(2);
        assertEquals(newUsername, userAfterUpdate.getUsername());
    }

    @Test
    void deleteUserSuccess() {
        userDao.delete(userDao.getById(2));
        assertNull(userDao.getById(2));
    }

    @Test
    void getAllUsersSuccess() {
        List<User> users = userDao.getAll();
        assertEquals(2, users.size());
    }
}
