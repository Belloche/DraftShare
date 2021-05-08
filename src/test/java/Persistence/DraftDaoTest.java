//package Persistence;
//
//import org.junit.jupiter.api.BeforeEach;
//import org.junit.jupiter.api.Test;
//import student.application.entity.Draft;
//import student.application.entity.User;
//import student.application.persistence.ProjectDao;
//import testUtils.Database;
//import java.util.List;
//import static org.junit.Assert.*;
//
//public class DraftDaoTest {
//    ProjectDao draftDao;
//    ProjectDao userDao;
//
//    @BeforeEach
//    void setUp() {
//
//        Database database = Database.getInstance();
//        database.runSQL("cleandb.sql");
//
//        draftDao = new ProjectDao(Draft.class);
//        userDao = new ProjectDao(User.class);
//    }
//
//    /**
//    * Draft Tests
//    */
//    @Test
//    void getDraftByIdSuccess() {
//        Draft retrievedDraft = (Draft)draftDao.getById(1);
//        assertEquals(1, retrievedDraft.getId());
//        assertEquals("testDraft", retrievedDraft.getDraftName());
//    }
//
//    @Test
//    void insertDraftSuccess() {
//        Draft newDraft = new Draft( 6, 4, "Evan", "testDraft", "this is a test", 5, 0,"Jaguars", "Trevor Lawrence", "QB", "Clemson","Jets", "Justin Fields", "QB", "Ohio State","Dolphins", "Penei Sowell", "OT", "Oregon","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson", "Jaguars", "Trevor Lawrence", "QB", "Clemson", "Jaguars", "Trevor Lawrence", "QB", "Clemson", "Jaguars", "Trevor Lawrence", "QB", "Clemson", "Jaguars", "Trevor Lawrence", "QB", "Clemson", "Jaguars", "Trevor Lawrence", "QB", "Clemson");
//        int id = draftDao.insert(newDraft);
//        assertNotEquals(0, id);
//        Draft insertedDraft = (Draft)draftDao.getById(id);
//        assertEquals("Evan", insertedDraft.getUser());
//    }
//
//    @Test
//    void updateDraftSuccess() {
//        String newPick = "Brett Favre";
//        Draft draftToUpdate = (Draft)draftDao.getById(1);
//        draftToUpdate.setPick1(newPick);
//        draftDao.saveOrUpdate(draftToUpdate);
//        Draft draftAfterUpdate = (Draft)draftDao.getById(1);
//        assertEquals(newPick, draftAfterUpdate.getPick1());
//    }
//
//    @Test
//    void deleteDraftSuccess() {
//        draftDao.delete(draftDao.getById(2));
//        assertNull(draftDao.getById(2));
//    }
//
//    @Test
//    void getAllDraftsSuccess() {
//        List<Draft> Drafts = draftDao.getAll();
//        assertEquals(2, Drafts.size());
//    }
//
//    /**
//     * User Tests
//     */
////    @Test
////    void getUserByIdSuccess() {
////        User retrievedUser = (User) userDao.getById(1);
////        assertEquals(1, retrievedUser.getId());
////        assertEquals("pwaite", retrievedUser.getUsername());
////    }
////
////    @Test
////    void insertUserSuccess() {
////        User newUser = new User(3, "testUser", "testPassword");
////        int id = userDao.insert(newUser);
////        assertNotEquals(0, id);
////        User insertedUser = (User) userDao.getById(id);
////        assertEquals("testUser", insertedUser.getUsername());
////    }
////
////    @Test
////    void updateUserSuccess() {
////        String newUsername = "paulawaite";
////        User userToUpdate = (User) userDao.getById(1);
////        userToUpdate.setUsername(newUsername);
////        userDao.saveOrUpdate(userToUpdate);
////        User userAfterUpdate = (User) userDao.getById(1);
////        assertEquals(newUsername, userAfterUpdate.getUsername());
////    }
////
////    @Test
////    void deleteUserSuccess() {
////        userDao.delete(userDao.getById(2));
////        assertNull(userDao.getById(2));
////    }
////
////    @Test
////    void getAllUsersSuccess() {
////        List<User> users = userDao.getAll();
////        assertEquals(2, users.size());
////    }
//}