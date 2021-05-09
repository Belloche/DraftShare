package Persistence;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import student.application.entity.Draft;
import student.application.entity.User;
import student.application.persistence.ProjectDao;
import testUtils.Database;
import java.util.List;
import static org.junit.Assert.*;

public class DraftTests {
    ProjectDao draftDao;

    @BeforeEach
    void setUp() {

        Database database = Database.getInstance();
        database.runSQL("cleandb.sql");

        draftDao = new ProjectDao(Draft.class);
//        userDao = new ProjectDao(User.class);
    }

    /**
    * Draft Tests
    */
    @Test
    void getDraftByIdSuccess() {
        Draft retrievedDraft = (Draft)draftDao.getById(1);
        assertEquals(1, retrievedDraft.getId());
        assertEquals("testDraft", retrievedDraft.getDraftName());
    }

    @Test
    void insertDraftSuccess() {
        Draft newDraft = new Draft();

        newDraft.setUserId(1);
        newDraft.setDraftName("DraftTest Draft");
        newDraft.setUser("pwaite");
        newDraft.setDownvotes(0);
        newDraft.setUpvotes(0);

        newDraft.setPick1("Trevor Lawrence");
        newDraft.setUni1("Clemson University");
        newDraft.setPos1("QB");
        newDraft.setTeam1("Jaguars");

        newDraft.setPick2("Zach Wilson");
        newDraft.setUni2("BYU");
        newDraft.setPos2("QB");
        newDraft.setTeam2("Jets");

        newDraft.setPick3("Trey Lance");
        newDraft.setUni3("North Dakota State University");
        newDraft.setPos3("QB");
        newDraft.setTeam3("49ers");

        newDraft.setPick4("Player 4");
        newDraft.setUni4("University 4");
        newDraft.setPos4("QB");
        newDraft.setTeam4("Team 4");

        newDraft.setPick5("Player 5");
        newDraft.setUni5("University 5");
        newDraft.setPos5("QB");
        newDraft.setTeam5("Team 5");

        newDraft.setPick6("Player 6");
        newDraft.setUni6("University 6");
        newDraft.setPos6("QB");
        newDraft.setTeam6("Team 6");

        newDraft.setPick7("Player 7");
        newDraft.setUni7("University 7");
        newDraft.setPos7("QB");
        newDraft.setTeam7("Team 7");

        newDraft.setPick8("Player 8");
        newDraft.setUni8("University 8");
        newDraft.setPos8("QB");
        newDraft.setTeam8("Team 8");

        newDraft.setPick9("Player 9");
        newDraft.setUni9("University 9");
        newDraft.setPos9("QB");
        newDraft.setTeam9("Team 9");

        newDraft.setPick10("Player 10");
        newDraft.setUni10("University 10");
        newDraft.setPos10("QB");
        newDraft.setTeam10("Team 10");

        newDraft.setPick11("Player 11");
        newDraft.setUni11("University 11");
        newDraft.setPos11("QB");
        newDraft.setTeam11("Team 11");

        newDraft.setPick12("Player 12");
        newDraft.setUni12("University 12");
        newDraft.setPos12("QB");
        newDraft.setTeam12("Team 12");

        newDraft.setPick13("Player 13");
        newDraft.setUni13("University 13");
        newDraft.setPos13("QB");
        newDraft.setTeam13("Team 13");

        newDraft.setPick14("Player 14");
        newDraft.setUni14("University 14");
        newDraft.setPos14("QB");
        newDraft.setTeam14("Team 14");

        newDraft.setPick15("Player 15");
        newDraft.setUni15("University 15");
        newDraft.setPos15("QB");
        newDraft.setTeam15("Team 15");

        newDraft.setPick16("Player 16");
        newDraft.setUni16("University 16");
        newDraft.setPos16("QB");
        newDraft.setTeam16("Team 16");

        newDraft.setPick17("Player 17");
        newDraft.setUni17("University 17");
        newDraft.setPos17("QB");
        newDraft.setTeam17("Team 17");

        newDraft.setPick18("Player 18");
        newDraft.setUni18("University 18");
        newDraft.setPos18("QB");
        newDraft.setTeam18("Team 18");

        newDraft.setPick19("Player 19");
        newDraft.setUni19("University 19");
        newDraft.setPos19("QB");
        newDraft.setTeam19("Team 19");

        newDraft.setPick20("Player 20");
        newDraft.setUni20("University 20");
        newDraft.setPos20("QB");
        newDraft.setTeam20("Team 20");

        newDraft.setPick21("Player 21");
        newDraft.setUni21("University 21");
        newDraft.setPos21("QB");
        newDraft.setTeam21("Team 21");

        newDraft.setPick22("Player 22");
        newDraft.setUni22("University 22");
        newDraft.setPos22("QB");
        newDraft.setTeam22("Team 22");

        newDraft.setPick23("Player 23");
        newDraft.setUni23("University 23");
        newDraft.setPos23("QB");
        newDraft.setTeam23("Team 23");

        newDraft.setPick24("Player 24");
        newDraft.setUni24("University 24");
        newDraft.setPos24("QB");
        newDraft.setTeam24("Team 24");

        newDraft.setPick25("Player 25");
        newDraft.setUni25("University 25");
        newDraft.setPos25("QB");
        newDraft.setTeam25("Team 25");

        newDraft.setPick26("Player 26");
        newDraft.setUni26("University 26");
        newDraft.setPos26("QB");
        newDraft.setTeam26("Team 26");

        newDraft.setPick27("Player 27");
        newDraft.setUni27("University 27");
        newDraft.setPos27("QB");
        newDraft.setTeam27("Team 27");

        newDraft.setPick28("Player 28");
        newDraft.setUni28("University 28");
        newDraft.setPos28("QB");
        newDraft.setTeam28("Team 28");

        newDraft.setPick29("Player 29");
        newDraft.setUni29("University 29");
        newDraft.setPos29("QB");
        newDraft.setTeam29("Team 29");

        newDraft.setPick30("Player 30");
        newDraft.setUni30("University 30");
        newDraft.setPos30("QB");
        newDraft.setTeam30("Team 30");

        newDraft.setPick31("Player 31");
        newDraft.setUni31("University 31");
        newDraft.setPos31("QB");
        newDraft.setTeam31("Team 31");

        newDraft.setPick32("Player 32");
        newDraft.setUni32("University 32");
        newDraft.setPos32("QB");
        newDraft.setTeam32("Team 32");

        int id = draftDao.insert(newDraft);
        assertNotEquals(0, id);
        Draft insertedDraft = (Draft)draftDao.getById(id);

        assertEquals("pwaite", insertedDraft.getUser());
        assertEquals("DraftTest Draft", insertedDraft.getDraftName());
        assertEquals(0, insertedDraft.getDownvotes());
        assertEquals(0, insertedDraft.getUpvotes());
        
        assertEquals("Trevor Lawrence", insertedDraft.getPick1());
        assertEquals("Clemson University", insertedDraft.getUni1());
        assertEquals("QB", insertedDraft.getPos1());
        assertEquals("Jaguars", insertedDraft.getTeam1());

        assertEquals("Zach Wilson", insertedDraft.getPick2());
        assertEquals("BYU", insertedDraft.getUni2());
        assertEquals("QB", insertedDraft.getPos2());
        assertEquals("Jets", insertedDraft.getTeam2());

        assertEquals("Trey Lance", insertedDraft.getPick3());
        assertEquals("North Dakota State University", insertedDraft.getUni3());
        assertEquals("QB", insertedDraft.getPos3());
        assertEquals("49ers", insertedDraft.getTeam3());

        assertEquals("Player 4", insertedDraft.getPick4());
        assertEquals("University 4", insertedDraft.getUni4());
        assertEquals("QB", insertedDraft.getPos4());
        assertEquals("Team 4", insertedDraft.getTeam4());

        assertEquals("Player 5", insertedDraft.getPick5());
        assertEquals("University 5", insertedDraft.getUni5());
        assertEquals("QB", insertedDraft.getPos5());
        assertEquals("Team 5", insertedDraft.getTeam5());

        assertEquals("Player 6", insertedDraft.getPick6());
        assertEquals("University 6", insertedDraft.getUni6());
        assertEquals("QB", insertedDraft.getPos6());
        assertEquals("Team 6", insertedDraft.getTeam6());

        assertEquals("Player 7", insertedDraft.getPick7());
        assertEquals("University 7", insertedDraft.getUni7());
        assertEquals("QB", insertedDraft.getPos7());
        assertEquals("Team 7", insertedDraft.getTeam7());

        assertEquals("Player 8", insertedDraft.getPick8());
        assertEquals("University 8", insertedDraft.getUni8());
        assertEquals("QB", insertedDraft.getPos8());
        assertEquals("Team 8", insertedDraft.getTeam8());

        assertEquals("Player 9", insertedDraft.getPick9());
        assertEquals("University 9", insertedDraft.getUni9());
        assertEquals("QB", insertedDraft.getPos9());
        assertEquals("Team 9", insertedDraft.getTeam9());

        assertEquals("Player 10", insertedDraft.getPick10());
        assertEquals("University 10", insertedDraft.getUni10());
        assertEquals("QB", insertedDraft.getPos10());
        assertEquals("Team 10", insertedDraft.getTeam10());

        assertEquals("Player 11", insertedDraft.getPick11());
        assertEquals("University 11", insertedDraft.getUni11());
        assertEquals("QB", insertedDraft.getPos11());
        assertEquals("Team 11", insertedDraft.getTeam11());

        assertEquals("Player 12", insertedDraft.getPick12());
        assertEquals("University 12", insertedDraft.getUni12());
        assertEquals("QB", insertedDraft.getPos12());
        assertEquals("Team 12", insertedDraft.getTeam12());

        assertEquals("Player 13", insertedDraft.getPick13());
        assertEquals("University 13", insertedDraft.getUni13());
        assertEquals("QB", insertedDraft.getPos13());
        assertEquals("Team 13", insertedDraft.getTeam13());

        assertEquals("Player 14", insertedDraft.getPick14());
        assertEquals("University 14", insertedDraft.getUni14());
        assertEquals("QB", insertedDraft.getPos14());
        assertEquals("Team 14", insertedDraft.getTeam14());

        assertEquals("Player 15", insertedDraft.getPick15());
        assertEquals("University 15", insertedDraft.getUni15());
        assertEquals("QB", insertedDraft.getPos15());
        assertEquals("Team 15", insertedDraft.getTeam15());

        assertEquals("Player 16", insertedDraft.getPick16());
        assertEquals("University 16", insertedDraft.getUni16());
        assertEquals("QB", insertedDraft.getPos16());
        assertEquals("Team 16", insertedDraft.getTeam16());

        assertEquals("Player 17", insertedDraft.getPick17());
        assertEquals("University 17", insertedDraft.getUni17());
        assertEquals("QB", insertedDraft.getPos17());
        assertEquals("Team 17", insertedDraft.getTeam17());

        assertEquals("Player 18", insertedDraft.getPick18());
        assertEquals("University 18", insertedDraft.getUni18());
        assertEquals("QB", insertedDraft.getPos18());
        assertEquals("Team 18", insertedDraft.getTeam18());

        assertEquals("Player 19", insertedDraft.getPick19());
        assertEquals("University 19", insertedDraft.getUni19());
        assertEquals("QB", insertedDraft.getPos19());
        assertEquals("Team 19", insertedDraft.getTeam19());

        assertEquals("Player 20", insertedDraft.getPick20());
        assertEquals("University 20", insertedDraft.getUni20());
        assertEquals("QB", insertedDraft.getPos20());
        assertEquals("Team 20", insertedDraft.getTeam20());

        assertEquals("Player 21", insertedDraft.getPick21());
        assertEquals("University 21", insertedDraft.getUni21());
        assertEquals("QB", insertedDraft.getPos21());
        assertEquals("Team 21", insertedDraft.getTeam21());

        assertEquals("Player 22", insertedDraft.getPick22());
        assertEquals("University 22", insertedDraft.getUni22());
        assertEquals("QB", insertedDraft.getPos22());
        assertEquals("Team 22", insertedDraft.getTeam22());

        assertEquals("Player 23", insertedDraft.getPick23());
        assertEquals("University 23", insertedDraft.getUni23());
        assertEquals("QB", insertedDraft.getPos23());
        assertEquals("Team 23", insertedDraft.getTeam23());

        assertEquals("Player 24", insertedDraft.getPick24());
        assertEquals("University 24", insertedDraft.getUni24());
        assertEquals("QB", insertedDraft.getPos24());
        assertEquals("Team 24", insertedDraft.getTeam24());

        assertEquals("Player 25", insertedDraft.getPick25());
        assertEquals("University 25", insertedDraft.getUni25());
        assertEquals("QB", insertedDraft.getPos25());
        assertEquals("Team 25", insertedDraft.getTeam25());

        assertEquals("Player 26", insertedDraft.getPick26());
        assertEquals("University 26", insertedDraft.getUni26());
        assertEquals("QB", insertedDraft.getPos26());
        assertEquals("Team 26", insertedDraft.getTeam26());

        assertEquals("Player 27", insertedDraft.getPick27());
        assertEquals("University 27", insertedDraft.getUni27());
        assertEquals("QB", insertedDraft.getPos27());
        assertEquals("Team 27", insertedDraft.getTeam27());

        assertEquals("Player 28", insertedDraft.getPick28());
        assertEquals("University 28", insertedDraft.getUni28());
        assertEquals("QB", insertedDraft.getPos28());
        assertEquals("Team 28", insertedDraft.getTeam28());

        assertEquals("Player 29", insertedDraft.getPick29());
        assertEquals("University 29", insertedDraft.getUni29());
        assertEquals("QB", insertedDraft.getPos29());
        assertEquals("Team 29", insertedDraft.getTeam29());

        assertEquals("Player 30", insertedDraft.getPick30());
        assertEquals("University 30", insertedDraft.getUni30());
        assertEquals("QB", insertedDraft.getPos30());
        assertEquals("Team 30", insertedDraft.getTeam30());

        assertEquals("Player 31", insertedDraft.getPick31());
        assertEquals("University 31", insertedDraft.getUni31());
        assertEquals("QB", insertedDraft.getPos31());
        assertEquals("Team 31", insertedDraft.getTeam31());

        assertEquals("Player 32", insertedDraft.getPick32());
        assertEquals("University 32", insertedDraft.getUni32());
        assertEquals("QB", insertedDraft.getPos32());
        assertEquals("Team 32", insertedDraft.getTeam32());
    }

    @Test
    void updateDraftSuccess() {
        String newPick = "Brett Favre";
        Draft draftToUpdate = (Draft)draftDao.getById(1);
        draftToUpdate.setPick1(newPick);
        draftDao.saveOrUpdate(draftToUpdate);
        Draft draftAfterUpdate = (Draft)draftDao.getById(1);
        assertEquals(newPick, draftAfterUpdate.getPick1());
    }

    @Test
    void deleteDraftSuccess() {
        draftDao.delete(draftDao.getById(2));
        assertNull(draftDao.getById(2));
    }

    @Test
    void getAllDraftsSuccess() {
        List<Draft> Drafts = draftDao.getAll();
        assertEquals(2, Drafts.size());
    }

    /**
     * User Tests
     */
//    @Test
//    void getUserByIdSuccess() {
//        User retrievedUser = (User) userDao.getById(1);
//        assertEquals(1, retrievedUser.getId());
//        assertEquals("pwaite", retrievedUser.getUsername());
//    }
//
//    @Test
//    void insertUserSuccess() {
//        User newUser = new User(3, "testUser", "testPassword");
//        int id = userDao.insert(newUser);
//        assertNotEquals(0, id);
//        User insertedUser = (User) userDao.getById(id);
//        assertEquals("testUser", insertedUser.getUsername());
//    }
//
//    @Test
//    void updateUserSuccess() {
//        String newUsername = "paulawaite";
//        User userToUpdate = (User) userDao.getById(1);
//        userToUpdate.setUsername(newUsername);
//        userDao.saveOrUpdate(userToUpdate);
//        User userAfterUpdate = (User) userDao.getById(1);
//        assertEquals(newUsername, userAfterUpdate.getUsername());
//    }
//
//    @Test
//    void deleteUserSuccess() {
//        userDao.delete(userDao.getById(2));
//        assertNull(userDao.getById(2));
//    }
//
//    @Test
//    void getAllUsersSuccess() {
//        List<User> users = userDao.getAll();
//        assertEquals(2, users.size());
//    }
}