package Persistence;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import student.application.entity.Draft;
import student.application.persistence.ProjectDao;
import testUtils.Database;
import java.util.List;
import static org.junit.Assert.*;

public class DraftDaoTest {
    ProjectDao dao;

    @BeforeEach
    void setUp() {

        Database database = Database.getInstance();
        database.runSQL("cleandb.sql");

        dao = new ProjectDao(Draft.class);
    }

    @Test
    void getByIdSuccess() {
        Draft retrievedDraft = (Draft)dao.getById(1);
        assertEquals(1, retrievedDraft.getId());
        assertEquals("testDraft", retrievedDraft.getDraftName());
    }
    
    @Test
    void insertSuccess() {
        Draft newDraft = new Draft("Evan", "testDraft", "this is a test", 5, 0,"Jaguars", "Trevor Lawrence", "QB", "Clemson","Jets", "Justin Fields", "QB", "Ohio State","Dolphins", "Penei Sowell", "OT", "Oregon","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson","Jaguars", "Trevor Lawrence", "QB", "Clemson", "Jaguars", "Trevor Lawrence", "QB", "Clemson", "Jaguars", "Trevor Lawrence", "QB", "Clemson", "Jaguars", "Trevor Lawrence", "QB", "Clemson", "Jaguars", "Trevor Lawrence", "QB", "Clemson", "Jaguars", "Trevor Lawrence", "QB", "Clemson");
        int id = dao.insert(newDraft);
        assertNotEquals(0, id);
        Draft insertedDraft = (Draft)dao.getById(id);
        assertEquals("Evan", insertedDraft.getUser());
    }

    @Test
    void updateSuccess() {
        String newPick = "Brett Favre";
        Draft draftToUpdate = (Draft)dao.getById(1);
        draftToUpdate.setPick1(newPick);
        dao.saveOrUpdate(draftToUpdate);
        Draft draftAfterUpdate = (Draft)dao.getById(1);
        assertEquals(newPick, draftAfterUpdate.getPick1());
    }

    @Test
    void deleteSuccess() {
        dao.delete(dao.getById(2));
        assertNull(dao.getById(2));
    }

    @Test
    void getAllSuccess() {
        List<Draft> Drafts = dao.getAll();
        assertEquals(2, Drafts.size());
    }
}